class Plugview < Formula
  desc "Low-latency viewer for HDMI capture cards (Switch, PlayStation, Xbox)"
  homepage "https://plugview.app"
  url "https://github.com/plugview/plugview/releases/download/v0.2.0/plugview-macos-universal.tar.gz"
  sha256 "97d5547812af0d827f9d0ba401ae515eb60dfe0201e5757584e3525607834539"
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
