#!/bin/bash

# Files to store the extracted data
tps_file="/home/sjq/Documents/Assignment/CS213/ProjectThree/tps_data_gauss.txt"
qps_file="/home/sjq/Documents/Assignment/CS213/ProjectThree/qps_data_gauss.txt"
err_file="/home/sjq/Documents/Assignment/CS213/ProjectThree/err_data_gauss.txt"

# Clear previous data in the files
> "$tps_file"
> "$qps_file"
> "$err_file"

# Prepare the database
sysbench oltp_read_write \
    --db-driver=pgsql \
    --pgsql-host=localhost \
    --pgsql-port=15432 \
    --pgsql-user=gaussdb \
    --pgsql-password='@Sjq123456' \
    --pgsql-db=postgres \
    --threads=500 \
    --tables=10 \
    --time=7200 \
    --report-interval=1\
    prepare

# Run the test and extract the data
sysbench oltp_read_write \
    --db-driver=pgsql \
    --pgsql-host=localhost \
    --pgsql-port=15432 \
    --pgsql-user=gaussdb \
    --pgsql-password='@Sjq123456' \
    --pgsql-db=postgres \
    --threads=500 \
    --tables=10 \
    --time=7200 \
    --report-interval=1\
    run | while IFS= read -r line; do
    # Extract `tps`, `qps`, and `err/s` using awk
    tps=$(echo "$line" | awk -F " " '{for(i=1;i<=NF;i++) if($i=="tps:") print $(i+1)}')
    qps=$(echo "$line" | awk -F " " '{for(i=1;i<=NF;i++) if($i=="qps:") print $(i+1)}')
    err=$(echo "$line" | awk -F " " '{for(i=1;i<=NF;i++) if($i=="err/s:") print $(i+1)}')

    # Append the extracted values to their respective files if they are not empty
    if [[ -n "$tps" ]]; then echo "$tps" >> "$tps_file"; fi
    if [[ -n "$qps" ]]; then echo "$qps" >> "$qps_file"; fi
    if [[ -n "$err" ]]; then echo "$err" >> "$err_file"; fi
done

# Cleanup the database
sysbench oltp_read_write \
    --db-driver=pgsql \
    --pgsql-host=localhost \
    --pgsql-port=15432 \
    --pgsql-user=gaussdb \
    --pgsql-password='@Sjq123456' \
    --pgsql-db=postgres \
    --threads=500 \
    --tables=10 \
    --time=7200 \
    --report-interval=1\
    cleanup
