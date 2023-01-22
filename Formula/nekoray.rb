cask "nekoray" do
  version "2.11"
  sha256 "36a840c7853a92de91796626c1e08ea6bff9fdb0e0ee9e152903be9cfb6e5af0"

  url "https://github.com/MatsuriDayo/nekoray/releases/download/#{version}/nekoray-#{version}-2023-01-13-macos-amd64.dmg",
      verified: "github.com/MatsuriDayo/nekoray/"
  name "nekoray"
  desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
  homepage "https://matsuridayo.github.io/"

  pkg "nekoray-#{version}-2023-01-13-macos-amd64.dmg"

  zap trash: "~/Library/Preferences/nekoray/"
end
