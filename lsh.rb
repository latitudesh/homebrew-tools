class Lsh < Formula
  desc "Latitude.sh CLI tool"
  homepage "https://www.latitude.sh/"
  version "1.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.2/lsh_Darwin_arm64.tar.gz"
      sha256 "932a42ae5ab92ace05901bb48cfc255e42e8d6ac3537f5280e0f20516638d2c8"
    else
      url "https://github.com/latitudesh/cli/releases/download/v1.5.2/lsh_Darwin_x86_64.tar.gz"
      sha256 "2e26974118bf527d92148e83b55e83dc7d2a93b2088fa9c1e7ff4ec0d29ad425"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/cli/releases/download/v1.5.2/lsh_Linux_x86_64.tar.gz"
      sha256 "3d34dbb864c6e9e3a521fefbbff68ef60cd99786265cb0dfe256e019863a9874"
    end
  end

  def install
    bin.install "lsh"
  end

  test do
    system "#{bin}/lsh", "version"
  end
end

