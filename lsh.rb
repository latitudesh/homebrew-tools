class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.9.1/lsh_Darwin_arm64.tar.gz"
      sha256 "6c89f1962bd806e445ac0ec40aaf65c9506d2cb7ca46efff3573660f34f3a429"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.9.1/lsh_Darwin_x86_64.tar.gz"
      sha256 "921783f6808b1ce161f6674676850dfa6607a7ef6d22a81f8075a4e398626264"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.9.1/lsh_Linux_x86_64.tar.gz"
      sha256 "b5a1d586032988a3eaad212474c6acf902bf2fb2845517b393bc4fe22f7112f2"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
