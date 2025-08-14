class Pebble < Formula
  desc "Pebble programming language CLI"
  homepage "https://github.com/Krishnaqwerty/Pebble"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Krishnaqwerty/Pebble/releases/download/v1.0.0/pebble-macos-arm64.tar.gz"
    sha256 "ea9bed845b1ccd8c5c4400c039fa7a455a6f3a8ccb9c5d8be4ea19c4c333bcbe"
  else
    odie "Pebble is not supported on this platform"
  end

  def install
    bin.install "pebble"
  end

  test do
    system "#{bin}/pebble", "--version"
  end
end
