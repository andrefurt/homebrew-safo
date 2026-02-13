cask "safo" do
  version "0.2.1"
  sha256 "aef7bce5e4c5ef879fcb2a4e5d2c52707a4e9b9f95ba5d86365ff4e5e23a62a8"

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
