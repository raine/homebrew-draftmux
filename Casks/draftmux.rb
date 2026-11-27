cask "draftmux" do
  version "0.8.0"
  sha256 "b4c5498f1b3405401cf00d78ba064cbd8578668881c719e10ff19cfb40e97e6b"

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
