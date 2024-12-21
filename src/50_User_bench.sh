# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/50_user_default_postgres.log"
LOGFILE2="/home/sjq/Documents/Assignment/CS213/ProjectThree/50_user_default_postgres9_2.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/50_user_default_openGauss.log"
for number in {1..10}
do 
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=50 \
        --tables=10 \
        --time=60 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=50 \
        --tables=10 \
        --time=60 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=50 \
        --tables=10 \
        --time=60 \
        cleanup
done
for number in {1..10}
do
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=35432 \
        --pgsql-db=postgres \
        --pgsql-user=postgres \
        --threads=50 \
        --tables=10 \
        --time=60 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=35432 \
        --pgsql-db=postgres \
        --pgsql-user=postgres \
        --threads=50 \
        --tables=10 \
        --time=60 \
        run >> "$LOGFILE2" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=35432 \
        --pgsql-db=postgres \
        --pgsql-user=postgres \
        --threads=50 \
        --tables=10 \
        --time=60 \
        cleanup
done
for number in {1..10}
do
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=50 \
        --tables=10 \
        --time=60 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=50 \
        --tables=10 \
        --time=60 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=50 \
        --tables=10 \
        --time=60 \
        cleanup
done
