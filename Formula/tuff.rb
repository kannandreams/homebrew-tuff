class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.2.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "43be82d8009f5b10601ba2ee5cea3abac62d709ac7e343892f59cb1a2c425dd9"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.2.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "b1d9bc932578815c4f2c8542033daf92666d94c3dd699051745b564bb38cb74c"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.2.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8532bfafb29b0fdcd5c4211b2636c02f946381c2c1ce575e794f6afa107c4a67"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
