# Command Line Basics — Practice Repo

A hands-on companion for learning the Unix command line (zsh/bash). It contains a
guided list of commands, organised by topic, plus small sample files to try them
on, so you can practise without touching your own data.

## What's inside

| File | Purpose |
| --- | --- |
| `demo.sh` | **Start here.** The walkthrough: commands grouped by topic, each section marked `# pN` (matching the slide/page number). |
| `sonnets.txt` | Shakespeare's Sonnets (Project Gutenberg): a large text for `cat`, `less`, `grep`, `wc`, `fold`. |
| `names.txt` | A short list of names for `sort`, `uniq`, `column`, redirection and pipes. |
| `numbers.txt` | Unsorted numbers with duplicates for `sort` and `uniq`. |
| `printmyenv.sh` | Prints `$NODE_ENV` and `$DATE`, showing what `export` does to environment variables. |
| `test/` | An empty directory for practising `chmod`/`chown -R`. |
| `xaa`–`xad` | Output of `split sonnets.txt` (1000-line chunks). |
| `a.txt`, `x.txt`, `error.txt`, `b.txt`, `s.txt` | Leftovers from the demos (background-loop output, captured stderr, a copy of `sonnets.txt`, and so on). Try to work out which command made each one. |

## Topics covered in `demo.sh`

| Section | Topic | Key commands |
| --- | --- | --- |
| p7 | First commands | `date`, `pwd`, `whoami`, `head`, `tail`, `wc`, `ls -alh` |
| p8 | Chaining | `;`, `&&`, `\|\|` |
| p9 | Unix philosophy: small tools, "everything is a file" | `sort`, `uniq`, `grep`, `fold`, `/dev/null`, `/dev/urandom` |
| p10–11 | Redirection and pipes | `<`, `>`, `>>`, `2>&1`, `\|` |
| p12–13 | Shell config and paging | `~/.zshrc`, `less +F`, `more` |
| p14 | Getting help | `man`, `info`, `--help`, `tldr`, `apropos` |
| p16–18 | Tab completion and navigation | `cd`, `pushd`, `popd`, `dirs` |
| p19–20 | File operations and globbing | `cp`, `mv`, `ln`, `rm`, `*`, `**`, `{a,b}`, `{1..5}` |
| p21–23 | Command substitution, quoting, env vars | `$(...)`, `'...'` vs `"..."`, `export` |
| p24–26 | Users and permissions | `sudo`, `su`, `chown`, `chmod` |
| p27–32 | Processes and job control | `ps`, `jobs`, `fg`, `bg`, `Ctrl-Z`, `kill`, `pgrep`, `lsof` |

## How to get the most out of it

1. **Clone it and work inside it:**
   ```sh
   git clone <repo-url> cmdline && cd cmdline
   ```
2. **Put `demo.sh` and a terminal side by side.** Type each command yourself
   instead of pasting it. Typing is how the commands stick.
3. **Predict, then run.** Before you press Enter, guess what will happen. When
   you're surprised, that's where you learn the most.
4. **Look up every new command** with `man <cmd>` or `tldr <cmd>`, then try one
   flag the demo doesn't use.
5. **Feel free to break things.** It's a git repo, so you can reset it:
   ```sh
   git status          # see what you changed or created
   git restore .       # undo edits to tracked files
   git clean -n        # preview new files to delete (then: git clean -f)
   ```

> ⚠️ **Don't run `demo.sh` as a script** (`sh demo.sh`). It contains `sudo`,
> `vim`, an infinite loop and `killall`, and it's meant to be typed one line at a
> time. `<TAB>`, `<PID>` and `^z` are keys to press or values to fill in, not
> literal text.

> 💻 **macOS vs Linux:** the demo was written on macOS. On Linux, use
> `journalctl` instead of `syslog`, `/dev/sd*` or `/dev/nvme*` instead of
> `/dev/disk*`, and your own `$HOME` paths instead of `/Users/junaid/...`.

## Try it yourself

Use only what's in `demo.sh` (plus `man` pages) to solve these. Answers are hidden below each one.

1. Recreate the `xaa`–`xad` files in a new folder and prove they match the originals.
   <details><summary>Answer</summary>

   `mkdir tmp && cd tmp && split ../sonnets.txt && cat xa* | diff - ../sonnets.txt && echo same`
   </details>

2. How many lines in `sonnets.txt` mention "love" (any case)?
   <details><summary>Answer</summary>

   `grep -ci love sonnets.txt` → 202
   </details>

3. Count how many times each number appears in `numbers.txt`.
   <details><summary>Answer</summary>

   `sort -n numbers.txt | uniq -c`
   </details>

4. Find the 5 most common words in `sonnets.txt`.
   <details><summary>Answer</summary>

   `tr -cs 'A-Za-z' '\n' < sonnets.txt | tr 'A-Z' 'a-z' | sort | uniq -c | sort -rn | head -5`
   </details>
