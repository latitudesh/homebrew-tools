class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.8/lsh_Darwin_arm64.tar.gz"
      sha256 "95a97bd018ab64d8f3aaaebe4bcfd9baeea66d5f209a022a99b4e44c1ca9a638"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.5.8/lsh_Darwin_x86_64.tar.gz"
      sha256 "cfd804b2b6ba3cfdbb398dec5cbb79b57396fb059260a626c2cc728d664b50f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.8/lsh_Linux_x86_64.tar.gz"
      sha256 "7fa6edbe1795e3de45dd9bf200da512f2d803a54a0c0808d87005b71d1c20747"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
