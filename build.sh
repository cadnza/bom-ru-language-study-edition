#!/usr/bin/env bash

# Assemble book
pandoc \
	-f markdown \
	-t epub \
	-o draft.epub \
	manuscript.md

# TODO: Add more CLI options
