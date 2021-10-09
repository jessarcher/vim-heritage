# heritage.vim

Heritage simply makes sure any parent directories exist when writing a new file.

This lets you do the following:

```vim
:e some/path/that/doesnt/exist.md
```

And when you write the buffer (i.e. `:w`) it will create the missing directories before writing the file.

This is helpful when combined with the following mapping (taken from `:help gf`):

```vim
" Allow gf to open non-existent files
map gf :edit <cfile><cr>
```

This allows you to type a non-existing file path in a document like so:

```php
file_get_contents('tests/fixtures/payload.json');
```

And then in normal mode with the cursor on the file path, press `gf` to open a new buffer for that path, and then be able to freely write to it without needing to manually create the path or directories.
