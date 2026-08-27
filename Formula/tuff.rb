class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.3/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "51eef467d8845c3a42aa34925099fd6a35b1fbd97ff69ea37cb812a8f47523b0"
    end

    on_intel do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.3/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "b2123c3fd7c77963a3e7df808aedd2a5f6faf5ba53a9bf432917084aa890a3bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kannandreams/tuff/releases/download/v0.1.3/tuff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57a9169363f61e58d2f2e50d400b0bc5a174e66104873d262fb3e178a539d405"
    end
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
