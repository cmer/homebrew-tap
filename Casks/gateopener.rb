cask "gateopener" do
  version "1.2.0"
  sha256 "768211e12209e5809b4687b126370cce51e3f81e4816614f9a19ec1dcc957168"

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
