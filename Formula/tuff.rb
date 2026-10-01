class Tuff < Formula
  desc "Manage and govern agent capabilities"
  homepage "https://github.com/kannandreams/tuff"
  license "MIT"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kannandreams/tuff/releases/download/v0.14.0/tuff-aarch64-apple-darwin.tar.gz"
      sha256 "7773b525bf60e0b10bfc6b060e8f699daca8c575adc42e54b4e77a62be6f1f48"
    else
      url "https://github.com/kannandreams/tuff/releases/download/v0.14.0/tuff-x86_64-apple-darwin.tar.gz"
      sha256 "0823e9077eb8aa6afcc6826dd66d98cfce5ec878a62a62fe74683fb60c3ffd2a"
    end
  end

  on_linux do
    url "https://github.com/kannandreams/tuff/releases/download/v0.14.0/tuff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "407f429eebda905a7771d21f284d65d0ba1ea1f5e09b549a31f61d6fa3e6de75"
  end

  def install
    bin.install "tuff"
  end

  test do
    system "#{bin}/tuff", "--version"
  end
end
