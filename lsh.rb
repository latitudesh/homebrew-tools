# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lsh < Formula
  desc ""
  homepage "https://www.latitude.sh/"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/lsh/releases/download/v1.2.0/lsh_Darwin_x86_64.tar.gz"
      sha256 "ad6dd3a6eb8eeb5b6a56e0d595ad0d9501b37b30024b3537da70e064bc02a0e4"

      def install
        bin.install "lsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/latitudesh/lsh/releases/download/v1.2.0/lsh_Darwin_arm64.tar.gz"
      sha256 "6f1e19c89b4ff8c67061c6ebfab6b65f5f142253b7bb6059246f92b0efefadbb"

      def install
        bin.install "lsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latitudesh/lsh/releases/download/v1.2.0/lsh_Linux_arm64.tar.gz"
      sha256 "b264490ecc678c762bc57091db2f001cc348b303c88fa46145b71fcaad3ac20c"

      def install
        bin.install "lsh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/latitudesh/lsh/releases/download/v1.2.0/lsh_Linux_x86_64.tar.gz"
      sha256 "fbd918f0c625a0fe52569375867ca9d69d6bab6af386ad4eb405fb41d79666a6"

      def install
        bin.install "lsh"
      end
    end
  end
end
