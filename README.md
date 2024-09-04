
To run the htex part of the test suite in this image:

```
docker run $IMAGE pytest /src/parsl/parsl/tests --config /src/parsl/parsl/tests/configs/htex_local.py
```

To run a simple example:

```
docker run $IMAGE python3 /examples/twostep.py
```
