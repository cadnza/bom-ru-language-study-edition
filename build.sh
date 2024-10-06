#!/usr/bin/env bash

# Assemble book
pandoc \
	-f markdown \
	-t epub \
	-o draft.epub \
	--metadata-file metadata.json \
	--epub-cover-image cover.png \
	--epub-title-page=false \
	--shift-heading-level-by -1 \
	manuscript.md

# TODO: Add more CLI options
