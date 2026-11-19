cask "orbit" do
  version "1.0.3"
  sha256 "9ca9e43fdf8bb3b2f7930b42a454ecd96ad2c463334690e503b9d0aa1ef88a79"
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
