cask "magimail" do
  version "0.7.0"
  sha256 "c5f27a52088bbe823c797c3b3dd1ef6d6eadfa350fbf33da5ad8890a9c820baa"

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
