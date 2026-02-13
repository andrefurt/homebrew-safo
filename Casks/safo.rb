cask "safo" do
  version "0.2.2"
  sha256 "fdeef0846c79d6c665bc970f257aac2ca37e902699f6ad67ccf68292a77a614d"

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
