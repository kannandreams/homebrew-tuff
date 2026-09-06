class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.7.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "92407efad6947c48e5e835f646bcdf91365069e414c9f5bda7d7164e66e13675"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.7.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "4470d1d40290061c43def307e5d4c565a3be4594e011de07a46557a2d9e9d81b"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.7.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "489efa9c25f48ce43d2467cca8407653c0592e5385ea8604b89c1fd973f15b8c"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
