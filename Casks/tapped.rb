cask "tapped" do
  version "1.3.0"
  sha256 "032c7aaff6c34412b528469fc81454bb061c1b645efafc25ef3a1eac0344aff4"

  url "https://github.com/shockz09/TypingStats/releases/download/v#{version}/TypingStats-v#{version}.zip"
  name "Tapped"
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
