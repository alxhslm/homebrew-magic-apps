cask "magimail" do
  version "0.6.0"
  sha256 "789e947793f715cb45a01cb30aee286db8a893d030ea6eef673c2060f530d0ce"

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
