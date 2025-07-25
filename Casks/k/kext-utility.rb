cask "kext-utility" do
  version "2.6.6"
  sha256 "3527644157e2eefc78cf8719a71f34558d010c97db9b054bfe362b4542531f21"

  url "https://cvad-mac.narod.ru/files/Kext_Utility.app.v#{version}.zip"
  name "Kext Utility"
  desc "Kext repair tool"
  homepage "https://cvad-mac.narod.ru/index/0-4"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-11-16", because: :unmaintained

  app "Kext Utility.app"

  caveats do
    requires_rosetta
  end
end
