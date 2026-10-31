cask "imessage-bridge" do
  version "0.9.0"
  sha256 "b60587402341b069c7c1e4bafe73dc27b90db15a2ba92b90f1a3abadaa4f7f86"

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
