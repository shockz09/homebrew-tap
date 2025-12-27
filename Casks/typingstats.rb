cask "typingstats" do
  version "1.0.0"
  sha256 "35828f85fcdf0b561f77d63b157a4ea398fa6dcb1d802f0cac576bce6e94ff7b"

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
