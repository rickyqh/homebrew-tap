cask "orbit" do
  version "1.0.3"
  sha256 "d570b1ad2d2cdbfaae4e3372645130381888b67035d6f4289cbd6d8286816afe"
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
