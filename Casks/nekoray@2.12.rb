cask "nekoray" do
  version "2.12"
  sha256 "bf3fc8866206aa1d8fa5cbc4b31cad2aafc0c320ff54cbf740ac6ea4549adbb1"

  url "https://github.com/MatsuriDayo/nekoray/releases/download/#{version}/nekoray-#{version}-2023-01-29-macos-amd64.dmg",
      verified: "github.com/MatsuriDayo/nekoray/"
  name "nekoray"
  desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
  homepage "https://matsuridayo.github.io/"

  app "nekoray.app"

  zap trash: "~/Library/Preferences/nekoray/"
end
