cask "safo" do
  version "0.2.0"
  sha256 "5999141daa0714c1386cc8f6382c5601b0fdc7d13b21180319d7282c2c57aec5"

  url "https://github.com/andrefurt/safo/releases/download/v#{version}/Safo-#{version}.zip"
  name "Safo"
  desc "Native macOS markdown viewer"
  homepage "https://github.com/andrefurt/safo"

  depends_on macos: ">= :sonoma"

  app "Safo.app"
  binary "safo"

  zap trash: [
    "~/Library/Caches/com.significa.safo",
    "~/Library/Preferences/com.significa.safo.plist",
  ]
end
