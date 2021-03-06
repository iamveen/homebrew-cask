cask 'db-browser-for-sqlite' do
  version '3.12.0'
  sha256 '4a7aaac7554c43ecec330d0631f356510dcad11e49bb01986ba683b6dfb59530'

  # github.com/sqlitebrowser/sqlitebrowser/ was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/#{version}/DB.Browser.for.SQLite-#{version}.dmg"
  appcast 'https://github.com/sqlitebrowser/sqlitebrowser/releases.atom'
  name 'SQLite Database Browser'
  homepage 'https://sqlitebrowser.org/'

  app 'DB Browser for SQLite.app'

  zap trash: [
               '~/Library/Preferences/net.sourceforge.sqlitebrowser.plist',
               '~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState',
             ]
end
