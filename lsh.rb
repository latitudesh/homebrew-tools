class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.1/lsh_Darwin_arm64.tar.gz"
      sha256 "3d7e33912bdd7db368bd8ff9ca16da3141849c7fd65f09c51a67a60d5c647f9f"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.6.1/lsh_Darwin_x86_64.tar.gz"
      sha256 "0f916bfc9d07e9a84a33222e15ad5c0cb401950afb9db499d1050c077b4f471d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.1/lsh_Linux_x86_64.tar.gz"
      sha256 "c9c79bd1b7adefd810dac97744752cdf32810c8e559fb84d424f050cf66fabc3"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
