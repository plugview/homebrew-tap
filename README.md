# Homebrew tap

Homebrew formula and cask for [plugview](https://plugview.app).

```sh
brew install --cask plugview/tap/plugview   # the app, plus the plugview command
brew install plugview/tap/plugview          # only the command
```

| Package | Description |
| --- | --- |
| [plugview](https://github.com/plugview/plugview) (cask) | The plugview app; links its `plugview` command into Homebrew's `bin` |
| [plugview](https://github.com/plugview/plugview) (formula) | Low-latency viewer for HDMI capture cards (Switch, PlayStation, Xbox) |

Install one of them: both provide `plugview`, and when both are installed the formula's command wins.

`Formula/plugview.rb` and `Casks/plugview.rb` follow plugview's latest release automatically through the
[Update formula](.github/workflows/update-formula.yml) workflow.
