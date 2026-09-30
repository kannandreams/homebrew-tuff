class Tuff < Formula
  desc "Manage and govern agent capabilities"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.13.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "f9ba1e6a85c6e3f84980eca8da0d8611de29812f9d68bc2af42602574ddd5e60"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.13.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "d439292254f75d6ff7d4c48f60d72e9f32c410e029c2ba4cfb8abbe14f429900"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.13.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "52c405218118b3e3555fea911334fef461894e3bcfeac2b731eca0aee2b629ff"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
