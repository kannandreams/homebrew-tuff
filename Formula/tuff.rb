class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.10.1/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "953d4aedf02a836c6dbc5da6f487127777f9b6bd5f353ba8c0c01f9ad1bafd4b"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.10.1/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "642ed7c5376fbbbaa3059cc1fe388d9b5557ce196fb57f4143df10f9e66a5c0e"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.10.1/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fc8fe5a614e2518bb9245fcd9c51261f66559b609244a3b6e7d5dd08f0bee1e0"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
