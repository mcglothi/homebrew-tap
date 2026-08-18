cask "portside" do
  version "0.23.2"
  sha256 "ac112c263461753a1be89055ae785450557ced8ec157d40b41ada52ff7c9fa53"

  url "https://github.com/mcglothi/portside/releases/download/v#{version}/Portside-#{version}.zip"
  name "Portside"
  desc "Native SSH session manager and terminal"
  homepage "https://github.com/mcglothi/portside"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Portside.app"

  zap trash: [
    "~/Library/Application Support/Portside",
    "~/Library/Caches/net.timmcg.portside",
    "~/Library/Preferences/net.timmcg.portside.plist",
  ]
end
