cask "draftmux" do
  version "0.3.1"
  sha256 "6bf96459991b09e58339c29c0a41cb1693560c3aa4e8022061bd4e67bd404770"

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
