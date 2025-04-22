#!/bin/sh

if [ "$VERSION" = "latest" ]; then
    curl -L https://get.pulumi.com/ | bash -s
else
    curl -L https://get.pulumi.com/ | bash -s -- --version "$VERSION"
fi

echo "export PATH=${HOME}/.pulumi/bin:$PATH" >> "$BASH_ENV"

# shellcheck source=/dev/null
. "$BASH_ENV"

cd "$WORKING_DIRECTORY" || exit
echo  "//npm.pkg.github.com/:_authToken=$NPM_GITHUB_TOKEN" > .npmrc
echo  "@$CIRCLE_PROJECT_USERNAME:registry=https://npm.pkg.github.com" >> .npmrc
yarn install
