class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.9.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "937a1f20be55908ae70307ee43fbb01cce1fca7bcc2127838b31138b28dc7dbf"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.9.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "86f3f07c5255979cad6245b240970de18b87b162fe0233c505cafb44d0bec0c0"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.9.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1c85331f3144155fe9f81af95860699c5ccc6ebf146f8d2158c319c0f235ba38"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
