#!/bin/bash
pbselected () {
	# selected | pbcopy
	selected | pbcopy
}
export -f pbselected