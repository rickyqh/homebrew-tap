cask "my-browser" do
  version "1.0.0"
  sha256 "90cd5d1a22c502d29e8af236ccf5d4210f1e896dcb353a891b5aef2ed2fbf7d7"
  url "https://github.com/rickyqh/my-browser/releases/download/v#{version}/MyBrowser.dmg"
  name "My Browser"
  desc "A customisable browser by rickyqh"
  homepage "https://github.com/rickyqh/my-browser"
  depends_on arch: :arm64
  app "My Browser.app"
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/My Browser.app"]
  end
end
