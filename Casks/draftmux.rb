cask "draftmux" do
  version "0.4.0"
  sha256 "ee53a32739f92acc431948b151aab7fc432d9064db464e7f802f7d36f66f74ed"

  url "https://github.com/raine/draftmux/releases/download/v#{version}/Draftmux-#{version}-arm64.dmg"
  name "Draftmux"
  desc "Draft GitHub, Slack and email messages with an agent"
  homepage "https://github.com/raine/draftmux"

  # The app replaces itself with new releases.
  auto_updates true
  depends_on arch: :arm64

  app "Draftmux.app"
  binary "#{appdir}/Draftmux.app/Contents/MacOS/draftmux"

  zap trash: [
    "~/Library/Caches/fi.zendit.Draftmux",
    "~/Library/Preferences/fi.zendit.Draftmux.plist",
    "~/Library/Saved Application State/fi.zendit.Draftmux.savedState",
  ]
end
