# Vim for dummies 😎

This a set of important commands and notes about vim made by _Greisy Guzman_ and _Fabian Pernia_. This info could be useful for those who want to know more about this text editor.

_Note_: whenever you have any questions about any command in vim use `:help {command-name}`. Additionally, for any shortcut notation please refer to `:help key-notation`.



## Commands

### Basic functions

**Modes**

| Name        | Trigger key |
|------------ |-------------|
| Normal      | `ESC`       |
| Insertion   | `i`         |
| Visual      | `v`         |

**Save or exit**

| Command     | Description                                            |
|-------------| -------------------------------------------------------|
| `:w`        | Save changes                                           |
| `:wq`       | Save and quit                                          |
| `:q`        | Quit the current window                                |
| `:q!`       | Quit without writing                                   |
| `:ZQ`       | Quit without checking for changes                      |
| `:ZZ`       | Write current file, if modified, and quit              |
| `:x`        | Like `:wq`, but write only when changes have been made |


### Move functions

Note: default `[count]` is `1` 

**Moving the cursor**

| Key | Direction                           |
|-----|-------------------------------------|
| `[count]H` | `[count]` times to the left  |
| `[count]J` | `[count]` times down         |
| `[count]K` | `[count]` times up           |
| `[count]L` | `[count]` times to the right |

**Moving through the file**

| Key | Moves to                                    |
|-----|---------------------------------------------|
| `0` | First character of the line                 |
| `$` | End of the current line                     |
| `gg`| First line on the first non-blank character |
| `G` | Last line on the first non-blank character  |

**Moving in a line**

| Key        | Decription                                           |
|------------|------------------------------------------------------|
| `[count]w` | `count` words forward (punctuation considered words) |
| `[count]W` | `count` words forward (spaces separate words)        |
| `[count]e` | `count` words forward (punctuation considered words) |
| `[count]E` | `count` words forward (no punctuation)               |
| `[count]b` | `count` words backward  (*)                          |
| `[count]B` | `count` WORDS backward  (*)                          |

(*) Note: 
> Like most of the capitalized movement pairs, b moves by **word**, but B moves by **WORD**. The difference is that vim considers a "word" to be letters, numbers, and underscores (and you can configure this with the iskeyword setting), but a "WORD" is always anything that isn't whitespace.

###### for more info about this, click [here](https://stackoverflow.com/questions/14390519/whats-the-difference-between-b-and-b-in-vim)

### Important

| Key or Command | Action                 |
|----------------|------------------------|
| `u`            | Undo                   |
| `Ctrl+r`       | Redo                   |
| `.`            | Repeat the last change |
| `:set number`  | See line numbers       |


### Inserting / Appending text

| Name        | Trigger key                                                      |
|-------------|------------------------------------------------------------------|
| `i`         | Insert text before the current cursor position                   |
| `a`         | Append text following current cursor position                    |
| `o`         | Open up a new line following the current line and add text there |

### Editing a file

| Operator       | Description                                 | Motion                       |
|----------------|---------------------------------------------|------------------------------|
| `d`            | Delete the following command                | `w`, `$`, `d`, `j`, `3j`     |
| `c`            | Change/Cut -delete and enter in insert mode | `w`, `<character>`, `e`, `b` |
| `p`            | Put or paste                                |                              |
| `y`            | Yank or copy                                | `w`, `e`, `b`                |
| `<>`           | Indent                                      | `$`, `2j`, `1k`              |

### Command bonus

#### Tabs

| Command                               | Decription                                           |
|---------------------------------------|------------------------------------------------------|
| `vim -p <file1> <file2>...`           | Open more than one file at startup                   |
| `:tabnew <filename>`                  | Open a new tab                                       |
| `:tab f <path>`                       | Open a new tab page and edit {file} in `<path>`
| `:tabn`                               | Go to the next tab page.  Wraps around from the last to the first one
| `:tabp`                               | Go to the previous tab page.  Wraps around from the first one to the last one
| `:tabfirst`                           | Go to the first tab page
| `:tablast`                            | Go to the last tab page
| `:tabclose [count]`                   | Close current tab page or the one pointed by `[count]`. It fails if there is only one tab page on the screen)|
| `:tabonly`                            | Close all other tab pages                       |
| `:tabs`                               | List the tab pages and the windows they contain |
| `:wqa`                                | Write all changed buffers and exit Vim

#### Inner
The following commands are avaiable in `visual` mode

| Command | Decription                         
|---------|------------------|
| `iw`    | Inner word       |               
| `it`    | Open a new tab   |                                   
| `i"`    | Inner quotes     |  
| `i[`    | Inner brackets   |   
| `ip`    | Inner paragraphs |  



## Plugins 

You can find any number of plugin just searching on google, but there is an interesting web page called [Vim Awesome](https://vimawesome.com/) where you can search and find almost any kind of plugin you can imagine for vim, including examples and direct references related to the docs, the stats and the current state (deprecated/up-to-date).

## Configuration file 

Feel free to download and use (and modify if you want) the `.vimrc` file we provide on this repository, which was the reference to make our presentation.


### Thanks for your interest! ❤️

