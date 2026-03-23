class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://github.com/MOHY-Li/rss-reader/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "a553d162d814986419f5727c7ff1a73ef12561d700297489e2d4274bca5525e2"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss-reader", "--help"
  end
end
