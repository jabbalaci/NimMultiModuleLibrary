## This is submodule #2.

func multiply*(a, b: int): int =
  ## Multiply two numbers.
  runnableExamples:
    doAssert multiply(2, 4) == 8

  a * b
