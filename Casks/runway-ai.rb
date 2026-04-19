cask "runway-ai" do
  version "0.1.1"

  if Hardware::CPU.arm?
    sha256 "203a060f0e80a966a5dd8488410e6013c3655c3f9b90555e0e5427e56537b9d2"
    url "https://github.com/mcglothi/runway/releases/download/v#{version}/Runway-#{version}-arm64.dmg"
  else
    sha256 "6f9498788649f17251073e100c50f9c6160214de17ea7f76a9aa78d305f3c312"
    url "https://github.com/mcglothi/runway/releases/download/v#{version}/Runway-#{version}-x64.dmg"
  end

  name "Runway"
  desc "Real-time AI quota tracker for the macOS menu bar"
  homepage "https://github.com/mcglothi/runway"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Runway.app"

  zap trash: [
    "~/Library/Application Support/Runway",
    "~/Library/Logs/Runway",
    "~/Library/Preferences/com.mcglothi.runway.plist",
  ]
end
