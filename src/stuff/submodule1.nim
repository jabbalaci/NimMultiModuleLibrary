## This is submodule #1.

func add*(a, b: int): int =
  ## Add two numbers.
  runnableExamples:
    doAssert add(2, 3) == 5

  a + b
