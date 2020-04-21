# docker-tree

This repository contains a Dockerfile that installs [tree](http://mama.indstate.edu/users/ice/tree/) using the `alpine:latest` image and returns the version using: `tree --version`

### Other Examples

```bash
# Basic command
$ tree

# Display directories only, to set depth level (3)
$ tree -d -L 3
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
$ docker run --rm --name CONTAINER_NAME IMAGE_NAME
```
