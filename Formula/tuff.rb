class Tuff < Formula
  desc "Manage and govern agent capabilities"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.15.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "3ed9564b71a375eeaeae0af201a5b42712ac001b036524663c648eb6cd02916a"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.15.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "7ff4b0cb2921e477d96561995f82e275bb2eaad799a08256d93e87e85b47cd70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.15.0/tuff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a245f5ce7d7301a5b16cc65d17f89607edc5160c7be8c7a47769b05923ffad38"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.15.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d91ec8bbf1373fcf9fe56f0d4115c31dd2776fe2cf983ac6dc859150ad8cab40"
    end
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
