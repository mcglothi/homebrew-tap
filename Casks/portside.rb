cask "portside" do
  version "0.21.0"
  sha256 "815f83c2ee97d9470d601fbf0e917cb0827f8c0e0b5a11f15ea262a709ed17f5"

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
