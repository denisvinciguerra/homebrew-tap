cask "pane-for-glasshouse" do
  version "1.3.0"
  sha256 "b84fffa10e065d471c8f2e3f4d70500dfd4026b816d32102016de78a2e0f1100"

  url "https://github.com/denisvinciguerra/pane-for-glasshouse/releases/download/v#{version}/Pane-for-Glasshouse-#{version}.dmg"
  name "Pane for Glasshouse"
  desc "Menu bar remote for LG TVs running Glasshouse"
  homepage "https://github.com/denisvinciguerra/pane-for-glasshouse"

  livecheck do
    url "https://github.com/denisvinciguerra/pane-for-glasshouse/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pane for Glasshouse.app"

  zap trash: [
    "~/Library/Caches/fr.synlink.pane",
    "~/Library/HTTPStorages/fr.synlink.pane",
    "~/Library/Preferences/fr.synlink.pane.plist",
  ]
end
