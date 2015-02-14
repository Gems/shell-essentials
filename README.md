# shell-essentials
Some essential things for those who use shell in their everyday routine

## fuck.sh
The `fuck.sh` script provides ability to call `fuck` command when some common error happens at the previous command call and there is a usual way to fix it.

In those situations you just type `fuck` and the last command will run appropriately.

### Supported fixes

`git push`

Sometimes you create new branch with `git checkout -b` command.

After that you usualy change some files and make some commits.

There is a time to push the branch to the origin and probably create PR for the changes.

You type `git push` and see:

```
fatal: The current branch feature-some has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin feature-some
```

There is a typical situation to call `fuck` to the rescue.

The `fuck` command with just five keyboard hits will check your command history, takes last command, call it again, analyze the error and call `git push --set-upstream origin feature-some` for you.

## Contribute

There is a one fix algorithm for now, so feel free and don't hesitate to send PRs with more.

Enjoy!
