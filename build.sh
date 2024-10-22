#!/usr/bin/env bash

# Copy contents of manuscript files into temporary file
fTemp=$(mktemp)
for f in $(find manuscript -type f | sort -V)
do
	cat "$f" >> "$fTemp"
	printf "\n" >> "$fTemp"
done

# Assemble book
pandoc \
	-f markdown \
	-t epub \
	-o draft.epub \
	--metadata-file metadata.json \
	--epub-cover-image cover.png \
	--epub-title-page=false \
	--shift-heading-level-by -1 \
	"$fTemp"

# Remove temporary file
rm "$fTemp"

# TODO: Add more CLI options
