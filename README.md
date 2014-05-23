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

Note that the execution creates a backup directory named after the directory
for the given file collection. To run again the script you must remove this
backup.


## Nice to have

* Backup only the selected files.
* Not assume all files are in the same directory.


## License

See LICENSE for details.
