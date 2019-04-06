# cask

## initial setup
```
# fork the repository and add your copy as a remote -> I believe this only needs to be done once

TODO: hub fork command for 'teamookla' ( permissions ) 

GITHUB_USER='claytonjwong'
cd "$(brew --repository)"/Library/Taps/homebrew/homebrew-cask
git clone git@github.com:claytonjwong/homebrew-cask.git
git remote add "${GITHUB_USER}" "https://github.com/${GITHUB_USER}/homebrew-cask"
```

## test locally: use generated cask to perform install / execution / uninstall
```
WORKSPACE=/Users/clayton.wong/workspace/cask/
CASK=testing.rb
WORKSPACE_CASK=${WORKSPACE}/${CASK}
brew cask audit ${WORKSPACE_CASK}
brew cask style --fix ${WORKSPACE_CASK}
HOMEBREW="$(brew --repository)"/Library/Taps/homebrew/homebrew-cask
HOMEBREW_CASKS=${HOMEBREW}/Casks
cp ${WORKSPACE_CASK} ${HOMEBREW_CASKS}
export HOMEBREW_NO_AUTO_UPDATE=1
brew cask install testing
testing
brew cask uninstall testing
```


## push to remote: audit/style check, add/commit/push to homebrew-cask fork, and open PR
```
GITHUB_USER=claytonjwong
WORKSPACE=/Users/clayton.wong/workspace/cask/
CASK=testing.rb
WORKSPACE_CASK=${WORKSPACE}/${CASK}
brew cask audit ${WORKSPACE_CASK}
brew cask style --fix ${WORKSPACE_CASK}
HOMEBREW="$(brew --repository)"/Library/Taps/homebrew/homebrew-cask
HOMEBREW_CASKS=${HOMEBREW}/Casks
VERSION=1.0.0
FEATURE=testing-${VERSION}
BRANCH=feature/${FEATURE}
cd ${HOMEBREW}
git co master
git pull
git co -b ${BRANCH}
cp ${WORKSPACE_CASK} ${HOMEBREW_CASKS}
git add ${HOMEBREW_CASKS}/${CASK}
git ci -m "add ${FEATURE}"
git push --set-upstream origin ${BRANCH}


hub pull-request https://github.com/${GITHUB_USER}/homebrew-cask/pull/new/${BRANCH}


yes | git-delete.sh ${BRANCH}

```
