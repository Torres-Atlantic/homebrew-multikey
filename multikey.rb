# Formula for MultiKey CLI
# This file should be placed in: homebrew-multikey/multikey.rb

class Multikey < Formula
    desc "Manage multiple GitHub SSH identities based on folder/repo location"
    homepage "https://github.com/Torres-Atlantic/multikey-cli"
    version "1.1.1"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Torres-Atlantic/multikey-cli/releases/download/v1.1.1/multikey-darwin-arm64.tar.gz"
        sha256 "a30ffa670b923bc29d836eb06d0ae94522194519f5ba6503dce5f35285462660"
      else
        url "https://github.com/Torres-Atlantic/multikey-cli/releases/download/v1.1.1/multikey-darwin-amd64.tar.gz"
        sha256 "b6d962ddbaab4be354e4869a82f979ee438b131cf4d00e95dfe4868a95bcd4b0"
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