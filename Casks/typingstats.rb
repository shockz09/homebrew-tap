cask "typingstats" do
  version "1.0.0"
  sha256 "7b2d28f896a815af445b4c56361295d4e2c67c4ba5feeccd048a33fdd258ced5"

  url "https://github.com/shockz09/TypingStats/releases/download/v#{version}/TypingStats-v#{version}.zip"
  name "TypingStats"
  desc "Minimal macOS menubar app that tracks daily keystrokes with iCloud sync"
  homepage "https://github.com/shockz09/TypingStats"

  app "TypingStats.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/TypingStats.app"
  end

  zap trash: [
    "~/Library/Application Support/TypingStats",
  ]
end
