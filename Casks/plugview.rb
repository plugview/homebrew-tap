cask "plugview" do
  version "0.4.4"
  sha256 "ed1711f2a5d8e252ab35cdf7b081f900192fb2cf5eab688dabe3ac47691b65c8"

  url "https://github.com/plugview/plugview/releases/download/v#{version}/plugview-macos-app.zip"
  name "plugview"
  desc "Low-latency viewer for HDMI capture cards (Switch, PlayStation, Xbox)"
  homepage "https://plugview.app/"

  # The plugview formula installs the same command. conflicts_with only accepts casks, so when both are
  # installed Homebrew keeps the formula's bin/plugview and warns.
  depends_on macos: :sonoma

  app "plugview.app"
  binary "#{appdir}/plugview.app/Contents/MacOS/plugview"

  zap trash: "~/Library/Preferences/app.plugview.plugview.plist"

  caveats <<~EOS
    plugview is not notarized yet. The first time it opens, macOS blocks it:
    open System Settings > Privacy & Security and click Open Anyway.
    Until then macOS also stops the plugview command (exit code 137).
    Each update asks for camera and microphone access again.
  EOS
end
