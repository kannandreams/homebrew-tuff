class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.6.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "44e9029e7484e397567ba944f06fe4260296a0b5e4aef63a6b5d7572232434e6"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.6.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "68cba198ce280d4cf3e697996c2b28d05cb3f7c60d659b516f0fd1530faaa3e0"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.6.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "547e1df1000d3ca9752a72abb9952340615f3a3478cf0fbeb633d365e8733c10"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
