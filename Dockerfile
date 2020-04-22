# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# CMD ["echo", "Hello, world!"]

# Install tldr:

RUN apk add tree
# RUN apk add npm
# RUN npm install -g tldr
# RUN apk add py-pip
# RUN pip install tldr

# Print out the description of 'tree' command

RUN echo "Tree is like ls with superpowers that will list expanded nested directories"

RUN echo -e "# Basic command \n\
$ tree\n\
\n\
# Display directories only, to set depth level (3)\n\
$ tree -d -L 3\n\
# Can also be written like this:\n\
$ tree -dL 3\n\
\n\
	# Other useful flags\n\
	-a # Display hidden files\n\
	-p # Display read/write permissions\n\
    -s # Display size of files/folders\n\
    -f # Display full path\n\
\n\
# Wildcard/Pattern matching 'bases' and 'search', prune nonmatches\n\
$ tree -P '*bases*' --prune\n\
\n\
# Ignore anything that matches with 'bases'\n\
$ tree -I '*bases*|*search*'\n\
\n\
# Print output to file\n\
$ tree . -do dev_list.txt -L 3\n\
"

# Run the 'tree' command
# CMD tldr tree
ENTRYPOINT [ "tree" ]
CMD [ "--version" ]