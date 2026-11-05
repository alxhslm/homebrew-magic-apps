cask "magical" do
  version "0.4.0"
  sha256 "646b861acc6b1ee32b967b2fac40d13531e0e6ee76f2f5efb52a7abcbbd4f116"

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
