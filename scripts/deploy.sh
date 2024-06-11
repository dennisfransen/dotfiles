#!/bin/bash

echo "Tag & push a new version of Klart"

VERSION=$(gum input --placeholder "Version number")

gum confirm "Push version $VERSION?" && git tag -a v$VERSION -m "Version $VERSION" && git push origin master --tag || echo "Aborted"
