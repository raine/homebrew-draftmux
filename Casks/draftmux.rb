cask "draftmux" do
  version "0.3.2"
  sha256 "7a25b9f33707eca21a555fadbe46287ccd2a6a4ce6b8c36a34979ca9b7d3facf"

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
