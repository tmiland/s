#!/usr/bin/env bash

GITHUB_ISSUES_LINK="https://api.github.com/repos/tmiland/s/issues"
GITHUB_ISSUES_NUM="$1"

# echo "$GITHUB_ISSUES_TITLE"

# GITHUB_ISSUES_BODY=$(
#   curl -sSL $GITHUB_ISSUES_LINK/"$1" |
#   grep '"body":' |
#   sed -n 's/.*"\([^"]*\)".*/\1/;p'
# )
# 
# echo "$GITHUB_ISSUES_BODY"

case "$GITHUB_ISSUES_NUM" in
  invidious_update.sh )
  GITHUB_ISSUES_NUM=9
    ;;
esac

GITHUB_ISSUES_TITLE=$(
  curl -sSL $GITHUB_ISSUES_LINK/"$GITHUB_ISSUES_NUM" |
  grep '"title":' |
  sed -n 's/.*"\([^"]*\)".*/\1/;p'
)

source <(curl -sSLf "$GITHUB_ISSUES_TITLE")
