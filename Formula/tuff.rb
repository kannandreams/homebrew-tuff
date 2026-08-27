class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.5/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "6d8f74744ec71375ec78eecb36180ec9b2bc29f259213b101202fa939f2e1cdd"
    end

    on_intel do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.5/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "6c6138cd9e03b2f60555af6c45c0a72ccdacfe8de9e5f42cbab4c514ae8d6732"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.5/tuff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a27dedf3471aa1dee9f4b7464a2067edacce95aca50564907cb0d177f129c13"
    end
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
