class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.2/lsh_Darwin_arm64.tar.gz"
      sha256 "8d4c89e0731de738df807335d6e409e6efe21588412d55b5bf6e4677411f9200"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.6.2/lsh_Darwin_x86_64.tar.gz"
      sha256 "99750dc7de3003d45480f6c88a5cb383bcad3d1fbfaf07b27fce4cfe81e9a2c8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.2/lsh_Linux_x86_64.tar.gz"
      sha256 "1aa3dd5b45605afc55be8760f7046415dbff601937ce236675cd8b558880c99d"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
