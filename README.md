# Analyzer Service for [cljdoc](https://github.com/martinklepsch/cljdoc)

#### Basic Idea

- Trigger parameterized builds that run [analyze.sh](https://github.com/martinklepsch/cljdoc/blob/master/script/analyze.sh)
- Store resulting edn as build artifact
- Tell non-sandboxed system that new stuff is available via webhook

#### Running builds via Circle CI API

See [`script/trigger-build.sh`](https://github.com/martinklepsch/cljdoc/blob/master/script/trigger-build.sh) in the main [cljdoc repo](https://github.com/martinklepsch/cljdoc/).
