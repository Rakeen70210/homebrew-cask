cask "sharemouse" do
  version "6.0.66"
  sha256 :no_check

  url "https://www.sharemouse.com/ShareMouseSetup.dmg"
  name "ShareMouse"
  desc "Share peripherals between computers"
  homepage "https://www.sharemouse.com/"

  livecheck do
    url "https://www.sharemouse.com/download/"
    regex(/Mac\s*Version:.*?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "ShareMouse.app"

  zap trash: [
    "/Users/Shared/ShareMouse",
    "~/Library/Caches/com.bartelsmedia.ShareMouse",
    "~/Library/Preferences/com.bartelsmedia.ShareMouse.plist",
  ]
end
