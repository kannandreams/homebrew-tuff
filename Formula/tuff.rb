class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.4.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "7b41358b490d23834c189c5e9fe9fbc7b85181cf9ba6d4c71cd225e7038ed45c"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.4.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "9f839aee86136cfb2d45f1b39795418041cceeb6e497721271493a0f5d5b3ea7"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.4.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7d99f82b4782768b88ff05b9c845caf7e21e30aaf949ec3a87627b61ed51334c"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
