class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.3/lsh_Darwin_arm64.tar.gz"
      sha256 "9105ce6c4a88d294fbd88c6c76cfa8ce78d9d2ba8916164cb2bcc6a2b1cac3f9"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.6.3/lsh_Darwin_x86_64.tar.gz"
      sha256 "0d4315e9a59b86396aa74228fa3b5ce071511c42c0905529cc94f8a2d6f70a6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.3/lsh_Linux_x86_64.tar.gz"
      sha256 "5e95de789c2236f56a09edde119eb69d86fa14b81b65f81fcaa5bde5ef9db61e"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
