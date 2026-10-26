cask "magical" do
  version "0.1.0"
  sha256 "df0c92543789e3c99e301313facc3753bc311f22a721660ca7dba3cf767ffea4"

  url "https://github.com/alxhslm/magic-apps/releases/download/magical-v#{version}/Magical-#{version}-arm64.dmg"
  name "Magical"
  desc "Google Calendar client"
  homepage "https://macmagic.app/"

  livecheck do
    url "https://github.com/alxhslm/magic-apps"
    regex(/^magical-v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Magical.app"

  zap trash: [
    "~/Library/Application Support/Magical",
    "~/Library/Caches/com.alexhaslam.magical",
    "~/Library/Preferences/com.alexhaslam.magical.plist",
    "~/Library/Saved Application State/com.alexhaslam.magical.savedState",
  ]
end
