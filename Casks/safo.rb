cask "safo" do
  version "0.1.1"
  sha256 "d8cfde223fbff14131f192624261d14737aaa36d7d2e7134f194ce2aa194b4e9"

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
