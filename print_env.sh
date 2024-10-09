print_test() {
    duration=$((3 * 60))  # Duration in seconds (10 minutes)
    interval=1  # Interval between iterations in seconds
    iterations=$((duration / interval))

    for ((i = 1; i <= iterations; i++)); do 
        echo "This is a test: $i"
        sleep 1 
        usleep "$((interval * 1000000))"
    done  
}

print_test
 
