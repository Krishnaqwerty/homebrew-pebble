class Pebble < Formula
  desc "Pebble programming language CLI"
  homepage "https://github.com/Krishnaqwerty/Pebble"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Krishnaqwerty/Pebble/releases/download/v1.0.0/pebble-macos-arm64.tar.gz"
    sha256 "put_arm64_sha256"
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
