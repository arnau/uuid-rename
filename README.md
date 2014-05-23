# UUID rename

Simple utility to rename a collection of files using unique identifiers.

Identifiers have the following pattern:

    {timestamp}-{uuid}.{original extension} # if extension exists
    {timestamp}-{uuid}


## Usage

From the command line:

    $ ruby uuid-rename.rb file [file...]

From the app package:

1. Execute (dobule click, Command-downarrow, etc.)
2. Select the desired files.
3. Press «Choose.»

Note that any execution creates a backup for any given file at `~/uuid-rename.bak/`

## License

See LICENSE for details.
