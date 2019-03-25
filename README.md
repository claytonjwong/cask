# cask

## use generated cask to perform install / execution / uninstall

### Input
```
cp /Users/clayton.wong/workspace/cask/testing.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/
export HOMEBREW_NO_AUTO_UPDATE=1
brew cask install testing
testing
brew cask uninstall testing

```

### Output
```
Claytons-MacBook-Pro:~ clayton.wong$ cp /Users/clayton.wong/workspace/cask/testing.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/
Claytons-MacBook-Pro:~ clayton.wong$ export HOMEBREW_NO_AUTO_UPDATE=1
Claytons-MacBook-Pro:~ clayton.wong$ brew cask install testing
==> Satisfying dependencies
==> Downloading https://github.com/claytonjwong/cask/raw/master/testing.tgz
==> Downloading from https://raw.githubusercontent.com/claytonjwong/cask/master/testing.tgz
######################################################################## 100.0%
==> Verifying SHA-256 checksum for Cask 'testing'.
==> Installing Cask testing
==> Linking Binary 'testing' to '/usr/local/bin/testing'.
🍺  testing was successfully installed!
Claytons-MacBook-Pro:~ clayton.wong$ testing
hello world!
Claytons-MacBook-Pro:~ clayton.wong$ brew cask uninstall testing
==> Uninstalling Cask testing
==> Unlinking Binary '/usr/local/bin/testing'.
==> Purging files for version 1.0.0 of Cask testing
```

## use hub cli to perform cask fork, add/ci/push, and PR

