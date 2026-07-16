cask "photoproof" do
  version "1.3.0"
  sha256 "873c4ade7a2660563e842b62afe74286d6396fc092a85aace6e4e37de9b862e4"

  url "https://github.com/cmer/photoproof/releases/download/v#{version}/PhotoProof-#{version}.zip"
  name "PhotoProof"
  desc "Verifies photos are backed up to Immich before removing them"
  homepage "https://github.com/cmer/photoproof"

  depends_on arch:  :arm64
  depends_on macos: :sonoma

  app "PhotoProof.app"

  zap trash: [
    "~/Library/Application Support/PhotoProof",
    "~/Library/Preferences/com.cmer.photoproof.plist",
    "~/Library/Saved Application State/com.cmer.photoproof.savedState",
  ]
end
