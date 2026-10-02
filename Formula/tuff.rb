class Tuff < Formula
  desc "Manage and govern agent capabilities"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.16.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "0501cbdbe58d97050338625429226492cfb7d3d226fa67eb3e7fc890c8ee1729"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.16.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "b7d9262b3c075e3e3792ab4eabf122ff65612385ee572f942649ba2c4f7f2a27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.16.0/tuff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d5597d045d3ed310edf016b1920959b417da9d58a504854bb3a95271889bd89"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.16.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97a38cae0ba70d78f7ee83e6d8111bcfc47b662b246923587be81a88193c9f8e"
    end
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
