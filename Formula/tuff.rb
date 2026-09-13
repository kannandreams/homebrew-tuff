class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.10.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "2bf44a71ed95fec524b59051d8009f8f391c5b9c15d7d260da30ed914781b990"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.10.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "5203cc90d51c6e2e0af6abcec4172a61fc8a66df99c43f36cd11d1fed8815848"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.10.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0a691fb2769c7bb08d0d073bd1abb7329e70fcc4ce1303bd74e229b889d51a84"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
