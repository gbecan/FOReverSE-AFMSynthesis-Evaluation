source("utils.R")

dirs <- list.dirs("../results_paradent")[-1]
files <- lapply(dirs, function(dir) readCSV(dir, "/metrics.csv"))
results <- Reduce(function(...) merge(..., all=T), files)
write.csv(results,"results.csv")





