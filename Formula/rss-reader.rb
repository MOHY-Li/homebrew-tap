class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://api.github.com/repos/MOHY-Li/rss-reader/tarball/v0.1.1"
  sha256 "8854defc9e7676a3ae7c86047b54d0d8ad424026512c065b35c17bdc46e51bc5"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss-reader", "--help"
  end
end
