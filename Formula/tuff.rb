class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.7/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "3463c00c18f0452ae1ad0b5f5614c36076963888bece8f44ec624ff6f43b91b2"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.7/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "cc6c70389537f8cb6634e19963cd25228870f8d022922f5f82515463677bfeff"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.1.7/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dba26685cf3637d597d0e507d47d837e5c449e8c4577ee97fadbe4e11b2564d4"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
