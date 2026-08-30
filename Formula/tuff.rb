class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.7/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "be1686c1b53b7789f565647a34f76cdeb41e1f94b13837da9a60f0da43d4add7"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.7/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "fa4770fad7afe89def95c5331fd506ef84186a6cbe444626eb9b1d8ae806be52"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.1.7/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "03b40de4710465729dcffa82c4dc1af270681eb4c1504c743ba94d797c653c47"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
