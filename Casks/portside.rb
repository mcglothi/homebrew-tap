cask "portside" do
  version "0.7.0"
  sha256 "945a4dc01b91d446d8da9c6ba8222d14c1e6e85ca5fa282a63335e74b7172656"

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
