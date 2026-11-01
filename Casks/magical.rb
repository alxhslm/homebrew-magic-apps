cask "magical" do
  version "0.3.0"
  sha256 "5bda7792fe4d9c20208d54949097a42866904f29d062fc6bcf1ff2d5cca2a6d7"

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
