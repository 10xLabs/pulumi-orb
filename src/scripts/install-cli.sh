if [ "$VERSION" == "latest" ]; then
    curl -L https://get.pulumi.com/ | bash -s
else
    curl -L https://get.pulumi.com/ | bash -s -- --version "$VERSION"
fi

echo "export PATH=${HOME}/.pulumi/bin:$PATH" >> "$BASH_ENV"
source "$BASH_ENV"
