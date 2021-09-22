# LaTeX grunt container

This container helps compiling latex projects managed by grunt task runner without the need to install any latex resources on your system.

## Benefits of using this container?

- Once downloaded, you can compile immediately. No installation of LaTeX or Node.JS required.
- Output filter allows you to automatically discard LaTeX's useless logfiles
- Just delete this image and your system is LaTeX free again :)

## Installation (Build image)

```bash
git clone https://github.com/FloWag/latex-grunt.git
cd latex-grunt
docker build -t latex-grunt .
```

## Usage

Navigate to the directory, which contains a valid `Gruntfile.js`.

```bash
cd path/with/Gruntfile.js
```

Run the `latex-grunt` container with the following options:

- mount the current directory to any directory inside the container
- set working directory of the container to that directory
- specify `ARTIFACT_FILES` as environment variable, for the files you expect the build process to output

**Example:**

```bash
docker run --rm -v .:/build -w /build -e ARTIFACT_FILES='00_thesis.pdf' -ti localhost/latex-grunt
```
