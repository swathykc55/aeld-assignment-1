
#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Error: Expected directory path and search string."
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
numlines=$(grep -r -h -F -o -- "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are ${numfiles} and the number of matching lines are ${numlines}"
