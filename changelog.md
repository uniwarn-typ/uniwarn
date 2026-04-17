# Changelog of `uniwarn` package

## v0.1.1

- Changes internal state key to be 'warnings::{namespace}' instead of just '{namespace}'. So you can use your package name for other purposes.

- Allows passing `panic:false` to `register-namespace` which will emit a warning instead of panic-ing.