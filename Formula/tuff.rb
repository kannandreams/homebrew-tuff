class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.8.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "795b7382618c20b569acf80e235ccd5c5cf0d1f6a3365639ef1e8032dfbfedad"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.8.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "593efedfe7e797c91a7039ff1a6f15f69e2555d3dfeded61aa2fc095f2a131cc"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.8.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "678300aed78063887bf3507f9dad247adb09620bbd6ae9fcdcf01becff0abfc5"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
