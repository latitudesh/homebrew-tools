class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.4/lsh_Darwin_arm64.tar.gz"
      sha256 "c259fd80037727101a835059cfcb2ed0d1c4866ed0ef0b966b221a8ffa03b721"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.5.4/lsh_Darwin_x86_64.tar.gz"
      sha256 "8ead40622b57cbf916058c91b84d4ef3a614c062c05c1916b8b7cc0d22b94ee5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.4/lsh_Linux_x86_64.tar.gz"
      sha256 "fd9bd387c3d61b88e100b95225dbfcffa865ebc228b9dc3f878fea035a71ea81"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
