class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.3/lsh_Darwin_arm64.tar.gz"
      sha256 "f2b8081ac17d2aeb7adcccc7b00f33263f47783f45154179dbc10e5e9ae86c12"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.5.3/lsh_Darwin_x86_64.tar.gz"
      sha256 "bf0c4714f058433827e9cc209e104e498dab9239ffb262506ddd3cdee8b4f4d8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.3/lsh_Linux_x86_64.tar.gz"
      sha256 "e473dcdeba12ccba5fa6de9c52c4936a93edb6265699359594a448f0ed386bda"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
