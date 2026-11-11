cask "magical" do
  version "0.6.0"
  sha256 "15c3c767cc6946f07797c435bdb9e75923e3b9f564e6ead81875dcd0593df2b0"

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
