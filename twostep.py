import parsl

@parsl.python_app
def twice(n: int) -> int:
  return n*2

@parsl.python_app
def triple(n: int) -> int:
  return n*3

with parsl.load():
  assert triple(twice(5)).result() == 30
  print("done")
