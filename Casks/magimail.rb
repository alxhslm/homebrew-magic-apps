cask "magimail" do
  version "0.1.0"
  sha256 "c833f4583e3e1d1f346802042c100e4b6cd3c3e2d4ec1e394db9060eaabfa0fe"

  url "https://github.com/alxhslm/magic-apps/releases/download/magimail-v#{version}/Magimail-#{version}-arm64.dmg"
  name "Magimail"
  desc "Native macOS Gmail client"
  homepage "https://macmagic.app"

  livecheck do
    url "https://github.com/alxhslm/magic-apps"
    regex(/^magimail-v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Magimail.app"

  zap trash: [
    "~/Library/Application Support/Magimail",
    "~/Library/Caches/com.alexhaslam.magimail",
    "~/Library/Preferences/com.alexhaslam.magimail.plist",
    "~/Library/Saved Application State/com.alexhaslam.magimail.savedState",
  ]
end
