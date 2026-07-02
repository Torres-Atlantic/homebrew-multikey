# Formula for MultiKey CLI
# This file should be placed in: homebrew-multikey/multikey.rb

class Multikey < Formula
    desc "Manage multiple GitHub SSH identities based on folder/repo location"
    homepage "https://github.com/Torres-Atlantic/multikey-cli"
    version "1.1.0"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Torres-Atlantic/multikey-cli/releases/download/v1.1.0/multikey-darwin-arm64.tar.gz"
        sha256 "d98d21d0e3c39b1f5e6e1ab00d190aa020bc1e3df088f6e65efe3555dd1ecf1a"
      else
        url "https://github.com/Torres-Atlantic/multikey-cli/releases/download/v1.1.0/multikey-darwin-amd64.tar.gz"
        sha256 "416c9ca2e3353f6466f19efb8e6066a471ad2ee4ac5171e3aec6647595d8ca5f"
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