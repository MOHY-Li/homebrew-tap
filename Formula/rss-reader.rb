class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://github.com/MOHY-Li/rss-reader/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e27f12023bfbc5b69999ba8f31168efaf18ffd3bf1f2a2da885eda7fd9cd724a"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss-reader", "--help"
  end
end
