cask "nsregextester" do
  version "1.0"
  sha256 :no_check

  url "https://raw.githubusercontent.com/aaronvegh/nsregextester/master/NSRegexTester.zip",
      verified: "raw.githubusercontent.com/aaronvegh/nsregextester/master/"
  name "NSRegexTester"
  homepage "https://github.com/aaronvegh/nsregextester"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-04-18", because: :unmaintained
  disable! date: "2025-04-22", because: :unmaintained

  app "NSRegexTester.app"
end
