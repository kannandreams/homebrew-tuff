class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.4/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "5838873b69d7e4830365e91ad212944e2e1649de245fe50d1f70b44df45625a9"
    end

    on_intel do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.4/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "3a53a06c2d2da58dc931e9430f7fe4436d51c1cca4263076fe2553bd0d22910d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.4/tuff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a20bf05a78b393c48f027c6434f499d2b04bd859d7c7f6b14dc4fcfc01d214f"
    end
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
