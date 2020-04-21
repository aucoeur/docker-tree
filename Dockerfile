# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# CMD ["echo", "Hello, world!"]

# Install tree:

RUN apk add tree

# Print out the description of 'tree' command

RUN echo "Tree is like ls with superpowers that will list expanded nested directories"

# Run the 'tree' command
CMD [ "tree", "--version" ]