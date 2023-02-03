cask "nekoray" do
    version "2.13"
    sha256 "cde2ed0f0ffdbd7a97f7e34a2e010fa38f2587f951aa301d6e6d777875f6cf47"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-#{version}-2023-01-31-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end
  