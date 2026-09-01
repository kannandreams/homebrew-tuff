class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.8/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "2f64d2a4064a9be9283b0f9f85b2ffbe827e231733b9abe145ffbd302283546f"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.8/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "eaa54fe8c72e9b2d805ce6e547df1d3af7b09a5a0cf1d89f404c7106bef1ce06"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.1.8/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3f6091d84616f31447dfe557d29043cc415fe1e4aba429bb14ef17078797d63c"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
