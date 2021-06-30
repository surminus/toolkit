#!/usr/bin/env bash
#
# pass sync - Password Store Extension (https://www.passwordstore.org/)
#
cmd_sync_pull() {
  pass git pull --rebase
}

cmd_sync_push() {
  pass git push
}

cmd_sync_default() {
  cmd_sync_pull && cmd_sync_push
}

cmd_sync_usage() {
    cat <<-_EOF
Usage:
    $PROGRAM sync
        Fetch the latest changes from the Git repository, and then push any
        local changes.
    $PROGRAM sync pull
        Fetch the latest changes from the Git repository.
    $PROGRAM sync push
        Push local changes.
_EOF
  exit 0
}

case "$1" in
  help|--help|-h) shift; cmd_sync_usage "$@" ;;
  pull)           shift; cmd_sync_pull "$@" ;;
  push)           shift; cmd_sync_push "$@" ;;
  *)                     cmd_sync_default "$@" ;;
esac

exit 0
