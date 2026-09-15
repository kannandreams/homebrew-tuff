class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.11.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "de55aa361479dfcc1b67717aee537a6ecc9732d9a8032cc2f3914575690d16c2"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.11.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "76d9714b81095440829e39c8712426ab354568e94881ab36dc849cfd441f8de2"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.11.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "00f9d12a6d409bfc03bef3aec85a82a9bc6b7be9d5f367d264c02edbff100470"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
