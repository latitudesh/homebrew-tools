class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.9.0/lsh_Darwin_arm64.tar.gz"
      sha256 "c17669357cef33e1f94b93ba0082caf06afdd53ebbed41def485425dffd5771e"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.9.0/lsh_Darwin_x86_64.tar.gz"
      sha256 "ece063d66f0c4065067d65c1569bb3e65e37daa0258e703912aa9bed3405fd79"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.9.0/lsh_Linux_x86_64.tar.gz"
      sha256 "998ede307098cf02ab4d1460b670046c5027c752f1268f2a6e4e822b39b0c9d0"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
