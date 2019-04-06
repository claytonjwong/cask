cask 'spoon.rb' do
  version '0.0.1'
  sha256 '6401298ebbc6edd14c89fb1378f3984584e75d70fdade68b2cf51dc44b8df818'

  # /github.com/claytonjwong/cask was verified as official when first introduced to the cask
  url "https://github.com/claytonjwong/cask/raw/master/testing.tgz"
  name 'spoon'
  homepage 'https://www.spoon.com'

  binary 'spoon'
end