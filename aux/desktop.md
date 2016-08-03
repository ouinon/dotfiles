# Notes

Loop over files and folders

# Rules

- Old Files / Folders are moved to Desktop Containers
- Old Files / Folders are moved to Trash Containers

- Old Desktop Containers are moved to Trash
- Old Trash Containers are deleted

# Glossary

Containers: Dated Folders (__YYYY-MM-DD__)

# Spec

BUCKET = DATE
  KEY = NAME
    VALUE = TIME

- Loop over active buckets
- Pair them with directories on the desktop

# Functions

Test age of container

