class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "06404d732ab00fef5f2192486eb55edecb675fc74bab346d73c080c7a5223b55"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "2dac2c349d1d26934d13ebde8c22230e57e32508d9694a624bc43c4463d8124c"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.1.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7aa6f5ef3a4dda589ef320cd4b06a2314fa4d7512f583b5ab57e41a7dd19bec0"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
