cask "magimail" do
  version "0.4.0"
  sha256 "598034e51d8a3b9d0e271c79b20aae5ed4b3cf3642789e8a02720f165fd7b40e"

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
