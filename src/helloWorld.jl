numThreads = Threads.nthreads();
Threads.@threads for i in 1:numThreads
    println("Hello World!"*
"This is thread # $(Threads.threadid())");
end

# Hello World! This is thread # 1
# Hello World! This is thread # 6
# Hello World! This is thread # 3
# Hello World! This is thread # 4
# Hello World! This is thread # 5
# Hello World! This is thread # 2
