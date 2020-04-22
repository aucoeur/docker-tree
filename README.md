# docker-tree

- This repository contains a Dockerfile that installs [tree](http://mama.indstate.edu/users/ice/tree/) using the `alpine:latest` image and returns the version using: `tree --version` if a `PATH` isn't provided
<!-- This repository contains a Dockerfile that installs [tldr](https://www.npmjs.com/package/tldr) using the `alpine:latest` image and returns the entry for [tree](http://mama.indstate.edu/users/ice/tree/) -->

---
 docker-tree uses [this](https://github.com/make-school-labs/docker-starter) starter template from [BEW 2.2: DevOps, Deployments &amp; Containers](https://make.sc/bew2.2). 

## 📂 Project Files

| Filename | Description |
| -------- | ----------- |
| `.gitignore` | General ignore file. Optimized for Python. |
| `.dockerignore` | A list of files that will not be copied during build. |
| `captain-definition` | **DO NOT MODIFY.** Used by CapRover for deployment. |
| `Dockerfile` | **Implement solutions in this file**. |
| `README.md` | Replace this `README` with content describing the purpose of your project. |

## 📦 Building & Running

| Variable | Description |
| -------- | ----------- |
| `USERNAME` | Your DockerHub username. |
| `IMAGE_NAME` | Name of the repository created above. |
| `CONTAINER_NAME` | Choose a name for this container.<br>Can be the same as `IMAGE_NAME`. |

### 1️⃣ Build

_Builds the `Dockerfile` found at the current path (`.`)._

```bash
# For local, omit USERNAME
$ docker build -t USERNAME/IMAGE_NAME .
```

### 2️⃣ Run & Test

_Runs the `IMAGE_NAME` image. Deletes the container after executing the `CMD`_.

```bash
$ docker run --rm --name docker-tree docker-tree 
tree v1.8.0 (c) 1996 - 2018 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro 

$ docker container run --rm -v [PATH_TO_MOUNT]:[PATH_TO_MOUNT] --name docker-tree docker-tree [PATH_TO_TREE] -[FLAGS]
```

### Other Examples

```bash
# Basic command
$ tree

# Display directories only, to set depth level (3)
$ tree -d -L 3
# Can also be written like this:
$ tree -dL 3

	# Other useful flags
	-a # Display hidden files
	-p # Display read/write permissions
    -s # Display size of files/folders
    -f # Display full path

# Wildcard/Pattern matching 'bases' and 'search', prune nonmatches
$ tree -P '*bases*' --prune

# Ignore anything that matches with 'bases'
$ tree -I '*bases*|*search*'

# Print output to file
$ tree . -do dev_list.txt -L 3
```

<!-- 
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
" -->
