# Notes

- Loop over files and folders
- Match against Dated_Folders
    + Remove From list
- If there's a DB
    + Iterate it's results
    + Match it's 


# Rules

- Old Files / Folders are moved to Dated_Folders
- Old Files / Folders are moved to Trash Dated_Folders

- Old Dated_Folders are moved to Trash
- Old Trash Dated_Folders are deleted


# Spec

DB = FOLDER
  BUCKET = DATE
    KEY = NAME
      VALUE = TIME

- Loop over active buckets
- Pair them with directories on the desktop

# Functions

Test age of container

# Glossary

Dated_Folders=${YYYY-MM-DD}