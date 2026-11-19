class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.10.0/lsh_Darwin_arm64.tar.gz"
      sha256 "0cee0c0ceee60a5787324650da7981b32c744f2a1a8a0a3875c1415025d456ea"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.10.0/lsh_Darwin_x86_64.tar.gz"
      sha256 "fe7b150deb5fbe9bfbc99d4e7300ce92c3a98cc18b350c37ad4093dc14980dce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.10.0/lsh_Linux_x86_64.tar.gz"
      sha256 "0717f02aa716810513d7cb39862ec2b01fe18fa90cdf5284fd0b4a48f71e838f"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
