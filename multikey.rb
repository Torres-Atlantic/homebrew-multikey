# Formula for MultiKey CLI
# This file should be placed in: homebrew-multikey/multikey.rb

class Multikey < Formula
    desc "Manage multiple GitHub SSH identities based on folder/repo location"
    homepage "https://github.com/Torres-Atlantic/multikey-cli"
    url "https://github.com/Torres-Atlantic/multikey-cli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "d6cd0cf7147cd18b2ba54622eaecffc423f590b2ba11430c004019ec4a8da99d"
    license "MIT"
    head "https://github.com/Torres-Atlantic/multikey-cli.git", branch: "main"
  
    depends_on "go" => :build
  
    def install
      # Build from source
      system "make", "build"
      bin.install "build/multikey"
    end
  
    test do
      system "#{bin}/multikey", "version"
    end
  end
  
  