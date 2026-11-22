class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.10.1/lsh_Darwin_arm64.tar.gz"
      sha256 "fc1a066ff769df2014e56eaeff1e84e3dba292064007f3a4fffbb0078565417a"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.10.1/lsh_Darwin_x86_64.tar.gz"
      sha256 "aa33c1149a7f67692014223b660cf20c55ba215259ca15ff8db7cb413cdff4aa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.10.1/lsh_Linux_x86_64.tar.gz"
      sha256 "4c8cbbbaf58455c394aea590d3689f43cff3add230ed5cd74b567b6904889ceb"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
