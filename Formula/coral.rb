class Coral < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/coral"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/coral/releases/download/v0.1.0/coral-aarch64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/kannandreams/coral/releases/download/v0.1.0/coral-x86_64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/coral/releases/download/v0.1.0/coral-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "coral"
  end

  test do
    system "#{bin}/coral", "--version"
  end
end
