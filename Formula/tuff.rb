class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.5.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "419063bc3920299752c22433eacda7c432951f04960b1fdfc416c60d22b1c26d"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.5.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "67458fe2356579d47b52477896286e1e747d15e925a2762ec889bccd3d81f6c4"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.5.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3747ce37f7acf2be51d94fd0955890187313c80285d27fd44e56c2a95f01ddd"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
