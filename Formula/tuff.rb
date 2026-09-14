class Tuff < Formula
  desc "Capability lifecycle manager for coding agents"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.10.2/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "4ec1d63a9b2130eac464e190991b2d042e321a9a213c7850e404ca6d6dbe3ebd"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.10.2/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "478f900bd75a886dce78718d2932750af1a9073b151af44869f57800b4674e66"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.10.2/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "754faecb3adb42a6b0ec7359d0110ccb7a5f49dc101808cbf4faa5c510303a46"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
