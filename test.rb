cask 'test' do
    version '1.0.0'
    sha256 '7204752c8cd1e5f08748ba3d0ad6af840581161a645315144b78dbf2a945d10a'
    # github.com/claytonjwong/cli was verified as official when first introduced to the cask
    url "https://github.com/claytonjwong/cask/raw/master/ookla-speedtest-1.0.0.35-devel.9aecb85-macosx.tgz"
    name 'Speedtest'
    homepage 'https://www.speedtest.net'

    binary 'speedtest'

end
