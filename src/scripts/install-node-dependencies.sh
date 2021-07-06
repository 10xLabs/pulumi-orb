cd "$WORKING_DIRECTORY" || exit
echo  "//npm.pkg.github.com/:_authToken=$NPM_GITHUB_TOKEN" > ./.npmrc
echo  "registry=$NPM_GITHUB_REGISTRY" >> ./.npmrc
npm install
