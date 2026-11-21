cask "orbit" do
  version "1.0.3"
  sha256 "0204792d5c7a6be7b82cb7d3133624856d915d077a627d641b2a88b547796246"
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
