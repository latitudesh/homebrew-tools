class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.7.0/lsh_Darwin_arm64.tar.gz"
      sha256 "235c4e1f245c2828d3cd78afa0bf852a00acef87d6d653ab9359ece64105536f"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.7.0/lsh_Darwin_x86_64.tar.gz"
      sha256 "9ea463c9d4a295aa9064ccfa65d6df80a5ddcf23907f488abb49fdbcca4fc6bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.7.0/lsh_Linux_x86_64.tar.gz"
      sha256 "2a6a1b6a46b2b4e2efd798b43cd50cd9a330c0d7ae68707ae65349859823cd06"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end
