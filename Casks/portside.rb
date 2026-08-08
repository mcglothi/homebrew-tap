cask "portside" do
  version "0.23.0"
  sha256 "2fa620d711f23c5692a527b879aa4297db24396c6d40bbab4711f51b5256d56b"

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
