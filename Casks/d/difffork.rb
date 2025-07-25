cask "difffork" do
  version "1.1.9.2"
  sha256 :no_check

  url "https://dotfork.s3.amazonaws.com/DiffFork.app.zip",
      verified: "dotfork.s3.amazonaws.com/"
  name "DiffFork"
  desc "Compare both folders and files, present the differences in a visual format"
  homepage "https://dotfork.com/"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-12-16", because: :discontinued

  app "DiffFork.app"
end
