# Formula for MultiKey CLI
# This file should be placed in: homebrew-multikey/multikey.rb

class Multikey < Formula
    desc "Manage multiple GitHub SSH identities based on folder/repo location"
    homepage "https://github.com/Torres-Atlantic/multikey-cli"
    version "1.0.0"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Torres-Atlantic/multikey-cli/releases/download/v1.0.0/multikey-darwin-arm64.tar.gz"
        sha256 "a42f2b7d0f71ef600941cb47bf17eba66cb216b25d9d215dca932ee209019c29"
      else
        url "https://github.com/Torres-Atlantic/multikey-cli/releases/download/v1.0.0/multikey-darwin-amd64.tar.gz"
        sha256 "1f8e1aa86e2154c38625c2687af6f94e89b899908ea95896d096349c211c0fb2"
      end
    end
  
    def install
      if Hardware::CPU.arm?
        bin.install "multikey-darwin-arm64" => "multikey"
      else
        bin.install "multikey-darwin-amd64" => "multikey"
      end
    end
  
    test do
      system "#{bin}/multikey", "version"
    end
  end