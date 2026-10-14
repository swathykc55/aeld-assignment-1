
#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Error: Expected file path and write string."
    exit 1
fi

writefile="$1"
writestr="$2"

if ! mkdir -p "$(dirname "$writefile")"; then
    echo "Error: Cannot create directory."
    exit 1
fi

if ! printf '%s\n' "$writestr" > "$writefile"; then
    echo "Error: Cannot create or write file."
    exit 1
fi
