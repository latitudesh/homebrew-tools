# typed: false
# frozen_string_literal: true

class Lsh < Formula
  desc ""
  homepage "https://www.latitude.sh/"
  version "1.4.0"

  on_macos do
    on_intel do
      url "https://github.com/latitudesh/cli/releases/download/v1.4.2/lsh_Darwin_x86_64.tar.gz"
      sha256 "d019deb790bdb20db464c2f09453dca2d834ea77b703476afa2f9227265e1678"

      def install
        bin.install "lsh"
      end
    end
    on_arm do
      url "https://github.com/latitudesh/cli/releases/download/v1.4.2/lsh_Darwin_arm64.tar.gz"
      sha256 "e832601135259bee7a0b22eab71df233bb4a20e7186cb630a738bf8d2680dbf5"

      def install
        bin.install "lsh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/latitudesh/cli/releases/download/v1.4.2/lsh_Linux_x86_64.tar.gz"
        sha256 "642ad72e70ac91b070d9e97c9544637b35f8e6f8406dbae973ca0329b33ae177"

        def install
          bin.install "lsh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/latitudesh/cli/releases/download/v1.4.2/lsh_Linux_arm64.tar.gz"
        sha256 "754a612fb34700958196be80f351168288305cdd8f6cda9e5977d3b56259095e"

        def install
          bin.install "lsh"
        end
      end
    end
  end
end
