class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://github.com/MOHY-Li/rss-reader/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "46b3ff178c99c17f20467587b3845ef96d7aa54be9f6b2cfec31afd99e9c9baf"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss", "--help"
  end
end
