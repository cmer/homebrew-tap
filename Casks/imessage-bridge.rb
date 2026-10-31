cask "imessage-bridge" do
  version "0.9.1"
  sha256 "7ccdeed9847e41667634a6e2e88ca395efbbfd702a021f35d0c3e85775f68463"

  url "https://github.com/cmer/imessage-bridge/releases/download/v#{version}/iMessage-Bridge-#{version}.dmg"
  name "iMessage Bridge"
  desc "Menu bar app that gives AI agents controlled access to iMessage"
  homepage "https://github.com/cmer/imessage-bridge"

  auto_updates true
  depends_on arch:  :arm64
  depends_on macos: :sonoma

  app "iMessage Bridge.app"
  binary "#{appdir}/iMessage Bridge.app/Contents/MacOS/imessage-bridge"

  uninstall quit: "org.bloomworks.imessage-bridge"

  zap trash: [
    "~/.config/imessage-bridge",
    "~/Library/Application Support/iMessage Bridge",
    "~/Library/Preferences/org.bloomworks.imessage-bridge.plist",
  ]
end
