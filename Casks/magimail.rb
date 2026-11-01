cask "magimail" do
  version "0.3.0"
  sha256 "bcd89d1cb5460cbcfa3318440c6a1e9c156c2981ad307dd73cd9d01deaad3bb5"

  url "https://github.com/alxhslm/magic-apps/releases/download/magimail-v#{version}/Magimail-#{version}-arm64.dmg"
  name "Magimail"
  desc "Gmail client"
  homepage "https://macmagic.app/"

  livecheck do
    url "https://github.com/alxhslm/magic-apps"
    regex(/^magimail-v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Magimail.app"

  zap trash: [
    "~/Library/Application Support/Magimail",
    "~/Library/Caches/com.alexhaslam.magimail",
    "~/Library/Preferences/com.alexhaslam.magimail.plist",
    "~/Library/Saved Application State/com.alexhaslam.magimail.savedState",
  ]
end
