# GitHub Action for TwigCS
GitHub Action implementation of the TwigCS Package provided by [https://github.com/friendsoftwig/twigcs](@friendsoftwig/twigcs).

## Inputs

### `dir`

The folder to run twigcs recursively from.

Default `'.'`.

### `severity_tolerance`

The exit code of TwigCS is based on the severity of any violation found. By default, twigcs only tolerates notices, this input changes this.

Available options:
`error` - Allows notices and warnings
`notice` - Disallows notices
`ignore` - Allows everything

Default `notice`.

### `ignore_folder`

Optional: Name of a subfolder to exclude.

## Example usage

```
uses: DirtDiglett/actions-twigcs@v1
with:
  dir: ./src/views
  severity_tolerance: notice
  ignore_folder: vendor
```