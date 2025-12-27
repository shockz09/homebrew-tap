cask "typingstats" do
  version "1.0.0"
  sha256 "350bc97c3a8d3841140716c02e7c2d5f05c9c1352774a774457bf7741e880bf7"

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
