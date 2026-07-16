cask "dmg-installer" do
  version "1.2.0"
  sha256 "9b407788a9d0aab078a906aa1af77155eb32026800d952585dc1c3356fd7246e"

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
