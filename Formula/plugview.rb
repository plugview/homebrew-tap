class Plugview < Formula
  desc "Low-latency viewer for HDMI capture cards (Switch, PlayStation, Xbox)"
  homepage "https://plugview.app"
  url "https://github.com/plugview/plugview/releases/download/v0.3.0/plugview-macos-universal.tar.gz"
  sha256 "40f87e273e4c21a2c2cd519804c7af208c5e63e1283f7a5005d4fa85277a3604"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "plugview"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/plugview --version").strip
    assert_match "USAGE", shell_output("#{bin}/plugview --help")
  end
end
