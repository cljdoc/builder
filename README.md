# Builder - API Analysis Job Runner for cljdoc

Cljdoc's API analysis supports the discovery of load-time generated APIs.
This makes API analysis potentially unsafe.

For this reason, and to pipeline API analysis, cljdoc offloads this task to the builder, a CircleCI job in this project.

1. The cljdoc web server triggers this project's CircleCI job to run cljdoc-analyzer on a specific library and waits for the job to complete
2. The job saves the cljdoc-analyzer result, an edn file describing library's API, to a known location
3. After the job is complete the cljdoc web server picks up the result and stores it as a build artifact
