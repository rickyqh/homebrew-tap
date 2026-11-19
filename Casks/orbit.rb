cask "orbit" do
  version "1.0.2"
  sha256 "dc67f9c08afcc73b5aaa4a12e2dfc1d1f2c01d8d1d5fbabac2e108d38a2bc1f7"
  url "https://github.com/rickyqh/orbit/releases/download/v#{version}/Orbit.dmg"
  name "Orbit"
  desc "A customisable browser by rickyqh"
  homepage "https://github.com/rickyqh/orbit"
  depends_on arch: :arm64
  app "Orbit.app"
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Orbit.app"]
  end
end
