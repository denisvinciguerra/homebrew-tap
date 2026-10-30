cask "pane-for-glasshouse" do
  version "1.0.0"
  sha256 "977ebf50d21064f95416c1ebe61f63a275aa810a9fc9d5873a6fec2d4bdd49eb"

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
