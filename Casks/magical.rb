cask "magical" do
  version "0.5.0"
  sha256 "64efa63d0dc302ea296ed3f0e43513e6681ff9237a13428e84efeb9340f8013d"

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
