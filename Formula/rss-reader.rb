class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://github.com/MOHY-Li/rss-reader/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "6dceefeedf6a597170e23ee0e5f309c05efef2040aaef3982e49a7bd9e21b836"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss", "--help"
  end
end
