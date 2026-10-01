class Plugview < Formula
  desc "Low-latency viewer for HDMI capture cards (Switch, PlayStation, Xbox)"
  homepage "https://github.com/MauricioLeon54/plugview"
  url "https://github.com/MauricioLeon54/plugview/releases/download/v0.1.0/plugview-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "2001a21d21d22c6e3367b9c076d94d4b790709cb054f23735994c82727a4e755"
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
