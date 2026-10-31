cask "imessage-bridge" do
  version "0.9.2"
  sha256 "cb387f740bbf05770daa3088a5019dbd876c6dc5a8a7379248e4a82901c5652d"

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
