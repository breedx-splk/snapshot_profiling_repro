
Attempt to repro [#2656](https://github.com/signalfx/splunk-otel-java/issues/2656).

# Requirements

To run this, you will need:
* docker
* k6 (`brew install k6`)
* java 17+ (I think)
* 3 terminal windows

# Collector

In one window, start the collector:

```bash
$ ./run-collector.sh
```

# Petclinic

In another window, run the petclinic java app:

```bash
$ ./run-petclinic.sh
```

# Run k6

In order to drive some test traffic to the app, we 
use k6 from our 3rd window:

```bash
$ k6 run -i 1000 --rps 100 k6/basic.js
```

(this probably runs for a few minutes)


# Results

