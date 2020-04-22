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

# Run the 'tree' command
# CMD tldr tree
ENTRYPOINT [ "tree" ]
CMD [ "--version" ]