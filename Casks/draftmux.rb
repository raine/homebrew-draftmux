cask "draftmux" do
  version "0.3.0"
  sha256 "b79b5777a7b521c30e70ab2301e22dbc30c46c773b17afc92eec346223b13dc5"

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
