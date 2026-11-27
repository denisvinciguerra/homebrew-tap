cask "pane-for-glasshouse" do
  version "1.4.0"
  sha256 "d881f1e9188808e8cc34093c94599af63c1835d0b1b6751f4968207eec30bd71"

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
