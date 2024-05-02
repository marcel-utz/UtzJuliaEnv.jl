using Pkg

CurrDir = pwd()

Pkg.activate(CurrDir)
Pkg.instantiate()
Pkg.update()

Pkg.build()

using IJulia
installkernel("Julia UtzEnv", "--project=$(CurrDir)")


