#!/bin/sh -l

sh -c "env";

# show event.json
if [ -n "$GITHUB_EVENT_PATH" ]; then
  echo "event.json";
  cat "$GITHUB_EVENT_PATH";
fi

sh -c "$*";