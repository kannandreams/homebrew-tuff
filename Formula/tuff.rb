class Tuff < Formula
  desc "Manage and govern agent capabilities"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.12.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "beab87271f7d91f610737ca415206c6e99c1bb5e397825a06d5393a60d4e362c"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.12.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "31d3b578b673563583a0714160cd6e0941e4d2470bd33af94ffd33fdd01f666c"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.12.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f8193800a6f5e6329d5df8b66f8d7d18cdff64a7bcdd768b75488e2981789b1"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
