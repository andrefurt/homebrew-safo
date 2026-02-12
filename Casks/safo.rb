cask "safo" do
  version "0.1.0"
  sha256 "34cbb057525c781248ec4a4da9887bddd25f0c6b35c35877c9769f540166f852"

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
