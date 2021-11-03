## forego

Foreman in Go. Fork of [ddollar/forego](https://github.com/ddollar/forego) migrated to Go modules and binaries on GitHub.

### Installation

##### Precompiled Binaries

Precompiled Binaries are available in [Releases](https://github.com/floj/tfrs/releases/latest)

##### Compile from Source

    $ go get -u github.com/floj/forego

### Usage

    $ cat Procfile
    web: bin/web start -p $PORT
    worker: bin/worker queue=FOO

    $ forego start
    web    | listening on port 5000
    worker | listening to queue FOO
