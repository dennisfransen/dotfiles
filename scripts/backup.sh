#!/bin/bash

SERVER="$USER@10.7.11.132"
SERVER_DIR="/backup/mysql-prod"
LOCAL_DIR="$HOME/Exports/"

LATEST_FILES=$(ssh $SERVER ls -t $SERVER_DIR | head -30)

FILE=$(gum choose $LATEST_FILES)

gum spin -s monkey --title "Fetching file $FILE..." -- \
	scp $SERVER:$SERVER_DIR/$FILE $LOCAL_DIR

gum spin -s monkey --title "Unpacking file $FILE..." -- \
	lbzip2 -d $LOCAL_DIR/$FILE

LENGTH=${#FILE}
UNPACKED_FILE=${FILE:0:LENGTH-4}

echo "Replacing database..."

pv $LOCAL_DIR/$UNPACKED_FILE | docker exec -i appkaratenbyggse-mysql-1 mysql --password=root karaten

echo "Done!"
