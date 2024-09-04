
To run the htex part of the test suite in this image:

```
docker run ghcr.io/parsl/trusted-ci:ci pytest /src/parsl/parsl/tests --config /src/parsl/parsl/tests/configs/htex_local.py -k 'not unix_filesystem_permissions_required'
```

To run a simple example:

```
docker run ghcr.io/parsl/trusted-ci:ci python3 /examples/twostep.py
```
