class RssReader < Formula
  desc "TUI RSS/Atom reader with multi-feed support"
  homepage "https://github.com/MOHY-Li/rss-reader"
  url "https://api.github.com/repos/MOHY-Li/rss-reader/tarball/v0.1.0"
  sha256 "d80d733d4b0503704418ce23f78c5acfd5f34730688e25d9df22ad4bf4d702a0"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"rss-reader", "--help"
  end
end
