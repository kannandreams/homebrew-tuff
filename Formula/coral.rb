class Coral < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/coral"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/coral/releases/download/v0.1.0/coral-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/kannandreams/coral/releases/download/v0.1.0/coral-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/coral/releases/download/v0.1.0/coral-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "coral"
  end

  test do
    system "#{bin}/coral", "--version"
  end
end
