basepath = "/home/u1/cmhyett/.julia/dev/LDM/"
using Pkg;
Pkg.activate(basepath);
Pkg.instantiate();
denom = ARGS[1];
outputPath = ARGS[2];
include(basepath * "./src/LDM.jl");
inputPath = basepath * "./results/pi$(denom)/lagrData_pi$(denom).jls"
LDM.TBNN.runTBNN(inputPath, 
                 outputPath, 
                 maxiters=800, 
                 learningRate=1e-3)
