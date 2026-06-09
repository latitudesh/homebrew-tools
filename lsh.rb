class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.0/lsh_Darwin_arm64.tar.gz"
      sha256 "26dbc5e849b100c9034e12c9da802fa49dacff3489e3bc971376cda8775e9a8c"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.6.0/lsh_Darwin_x86_64.tar.gz"
      sha256 "09865db2b3a4e6407fcf31f5353859f9b156b09e8e1f5786ed9cfc67e258f005"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.6.0/lsh_Linux_x86_64.tar.gz"
      sha256 "d029895777da77eb77f319f64f841a6e81dcd8e0b0dcfcdbdb6949e746672dfa"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
