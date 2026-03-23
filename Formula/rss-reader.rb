class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://github.com/MOHY-Li/rss-reader/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "3b34870dca38283104591826a711f05fc375dd85b728bdd5203f2e3aefd7cb60"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss-reader", "--help"
  end
end
