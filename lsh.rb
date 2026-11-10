class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.8.0/lsh_Darwin_arm64.tar.gz"
      sha256 "476c477dad9620910bc77f506f71cee534ac619bacbd57c62d1ea37f348a3d63"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.8.0/lsh_Darwin_x86_64.tar.gz"
      sha256 "b8810a1131f8a439e2c865c71df2a1edb4dac2bb28cbc3c14a89851228addbfc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.8.0/lsh_Linux_x86_64.tar.gz"
      sha256 "2a673166e278c0215d3a90a68e0bdc58f2931d15aeded9d74419dfc05da4f228"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
