cask "gateopener" do
  version "1.1.0"
  sha256 "892d3b2c12596b9c9de35a475c18c0543713e2e22232a3d348d818c37ac8b618"

  url "https://github.com/cmer/gateopener/releases/download/v#{version}/GateOpener-#{version}.zip"
  name "GateOpener"
  desc "Removes Gatekeeper quarantine attributes from apps"
  homepage "https://github.com/cmer/gateopener"

  depends_on arch:  :arm64
  depends_on macos: :ventura

  app "GateOpener.app"

  zap trash: [
    "~/Library/Preferences/com.cmer.gateopener.plist",
    "~/Library/Saved Application State/com.cmer.gateopener.savedState",
  ]
end
