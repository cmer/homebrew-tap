cask "rundmg" do
  version "2.0.0"
  sha256 "97197b02b56e9b117e3df8963c7fc9e321381c8d5d19ff5c63213a51e5d476cd"

  url "https://apps.bloomworks.org/rundmg/releases/#{version}/rundmg-#{version}.dmg"
  name "RunDMG"
  desc "Install applications from disk images with one click"
  homepage "https://www.rundmg.app"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "RunDMG.app"

  zap trash: [
    "~/Library/Caches/org.bloomworks.rundmg",
    "~/Library/HTTPStorages/org.bloomworks.rundmg",
    "~/Library/Preferences/org.bloomworks.rundmg.plist",
    "~/Library/Saved Application State/org.bloomworks.rundmg.savedState",
  ]
end
