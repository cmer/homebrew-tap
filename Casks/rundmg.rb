cask "rundmg" do
  version "2.0.1"
  sha256 "396c321bfb15e0e6eb77f3a7f3a7bcd4dc1285a3d0884862991a146b1d18b593"

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
