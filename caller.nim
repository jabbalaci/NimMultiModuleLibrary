import stuff
import stuff/submodule1
import stuff/submodule2

proc main() =
  hello()
  echo add(2, 3)
  echo multiply(2, 3)

# ############################################################################

when isMainModule:
  main()
