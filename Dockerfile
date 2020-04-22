# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# CMD ["echo", "Hello, world!"]

# Install tldr:

# RUN apk add tree
RUN apk add npm
RUN npm install -g tldr

# Print out the description of 'tree' command

RUN echo "Tree is like ls with superpowers that will list expanded nested directories"

# Run the 'tldr tree' command
# CMD [ "tree", "--version"]
CMD [ "tldr tree" ]