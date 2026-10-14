cask "dmg-installer" do
  version "1.2.1"
  sha256 "45d3b5489ca5515897c00b785502952db537069a272d815c0bbefd6ee4a270e8"

  url "https://github.com/cmer/dmg_installer/releases/download/v#{version}/dmg_installer-#{version}.zip"
  name "DMG Installer"
  desc "Install applications from disk images with one click"
  homepage "https://github.com/cmer/dmg_installer"

  depends_on macos: :ventura

  app "DMG Installer.app"

  zap trash: [
    "~/Library/Preferences/com.cmer.dmginstaller.plist",
    "~/Library/Saved Application State/com.cmer.dmginstaller.savedState",
  ]
end
