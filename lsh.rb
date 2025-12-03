class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.5/lsh_Darwin_arm64.tar.gz"
      sha256 "073fc8d80c758c194060ecb541d53d0890e4881e115d21129dd3160a3512637e"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.5.5/lsh_Darwin_x86_64.tar.gz"
      sha256 "9d3981f9a6ba6ae46aacaa0b4a6c2293f298142fc466afd9c1404cb2da42cd9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.5/lsh_Linux_x86_64.tar.gz"
      sha256 "b41d31c58f5f51a9d8b1a4a4c8f3cfecd542542a95823c506d895910a38b1d35"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
