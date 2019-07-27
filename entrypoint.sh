#!/bin/sh -l

# env
echo "# env";
sh -c "env";

# event.json
if [ -n "$GITHUB_EVENT_PATH" ]; then
  echo "# event.json";
  cat "$GITHUB_EVENT_PATH";
fi

sh -c "$*";