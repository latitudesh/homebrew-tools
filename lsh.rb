class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.7/lsh_Darwin_arm64.tar.gz"
      sha256 "60ac01ebc3c5688633c2059715e454a65c0cf2b50f0feaed9d72406b0702164c"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.5.7/lsh_Darwin_x86_64.tar.gz"
      sha256 "b15eb38393e750560e4a691233724b87fdd408285b54e3d4420563158859c450"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.7/lsh_Linux_x86_64.tar.gz"
      sha256 "d2a031ff751cb2d43ce9987d4762ddf8a31dbd3c91bd1f0ac3ff929863b33db8"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
