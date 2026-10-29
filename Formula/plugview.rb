class Plugview < Formula
  desc "Low-latency viewer for HDMI capture cards (Switch, PlayStation, Xbox)"
  homepage "https://plugview.app"
  url "https://github.com/plugview/plugview/releases/download/v0.4.4/plugview-macos-universal.tar.gz"
  sha256 "3d03aca916d96098074ca9e35ba9706c0f38c73bf1f24bf758b3ca1495f11be4"
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
