if GIT_DIR=.git git tag --list | egrep -q "^$1$"
then
    echo "Found tag"
else
    echo "Tag not found"
fi

