a = 0;
for i in 1:1000
    global a += 1;
end
println("serial a = $(a)");

a = 0;
Threads.@threads for i in 1:1000
    global a += 1;
end
println("parallel a = $(a)");

# serial a = 1000
# parallel a = 881
