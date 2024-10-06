#!/usr/bin/env bash

# Assemble book
pandoc \
	-f markdown \
	-t epub \
	-o draft.epub \
	--metadata-file metadata.json \
	manuscript.md

# TODO: Add more CLI options
