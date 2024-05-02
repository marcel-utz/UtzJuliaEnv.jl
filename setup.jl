using Pkg

CurrDir = pwd()

Pkg.activate(CurrDir)
Pkg.instantiate()
Pkg.update()

env=Dict("IJULIA_NODEFAULTKERNEL"=>true)
Pkg.build()

using IJulia
installkernel("Julia UtzEnv", "--project=$(CurrDir)")


