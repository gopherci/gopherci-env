# GopherCI Environment for Docker

This repository provides a Docker image that's used by GopherCI to execute
static analysis tools within.

This environment should provide all necessary vendoring, static analysis, lint,
and go versions to perform all necessary checks.

# Update

With Docker cache:
```
make build
```

Without Docker cache:
```
make build-no-cache
```

# Release

```
make push
```
