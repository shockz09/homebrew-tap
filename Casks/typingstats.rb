cask "typingstats" do
  version "1.2.0"
  sha256 "c0b07954a8fc0c4aa8fcfaa4d5388b2b1ea35c3fa965763a4ccf0377a98d3b76"

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
