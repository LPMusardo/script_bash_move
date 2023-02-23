#!/bin/bash
shopt -s nullglob

#DESCRIPTION:

# BEFORE : 
# SRC_DIR --> SUBFOLDER_A -> FILE_A
#		  |
#		  +-> SUBFOLDER_B -> FILE_B
#		  |
#		  +-> SUBFOLDER_C -> FILE_C
# DEST_DIR

# AFTER : 
# SRC_DIR --> SUBFOLDER_A
#		  |
#		  +-> SUBFOLDER_B
#		  |
#		  +-> SUBFOLDER_C
# DEST_DIR
#		  |
#		  +-> FILE_A
#		  |
#		  +-> FILE_B
#		  |
#		  +-> FILE_C


#COMPLETE THIS VARs BEFORE RUNNING :
SRC_DIR="/Volumes/Public/bibliotheque/Videos/..."
AVOID_PATTERN="S02"
FILE_PATTERN=".mkv"
DEST_DIR="/Volumes/Public/bibliotheque/Videos/s..."


# HELP :
# mkdir -p --> create missing dirs only of necessary
# grep -q --> "quiet"
# grep -v --> "inverse"
# shopt -s nullglob --> https://stackoverflow.com/questions/49382814/bash-for-loop-using-ls-and-wildcard --> fix "because of a shell misfeature that non-matching wildcard patterns are left unchanged instead of being expanded to an empty list"



mkdir -p "$DEST_DIR"

for SUBFOLDER in "$SRC_DIR"/*; do
    if echo "$SUBFOLDER" | grep -q -v "$AVOID_PATTERN"; then
        #echo "$SUBFOLDER"
		for FILE in "$SUBFOLDER"/*; do
		    if echo "$FILE" | grep -q "$FILE_PATTERN"; then
		        echo "$FILE"
		        #mv "$FILE" "$DEST_DIR"
		    fi
		done

    fi
done
