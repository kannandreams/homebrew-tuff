class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.3.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "75dc09ef928d48e15e38f850e8d6973b7b763e52a7ecad2753e2be5fffe97ba8"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.3.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "54e1032d829e04014fbd09c0b77e6d13c94ea968cdc10ac5d77f6d6d652b5b0a"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.3.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e36cb438964e3d24c3b002685631f50bb7c5e0a8f32a72c287767bf60f34cb8e"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
