# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/600_3_20_postgres.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/600_3_20_openGauss.log"
for number in {1..10}
do 
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=600 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=600 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=600 \
        --tables=3 \
        --time=20 \
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
        --threads=600 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=600 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=600 \
        --tables=3 \
        --time=20 \
        cleanup
done
# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/400_3_20_postgres.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/400_3_20_openGauss.log"
for number in {1..10}
do 
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=400 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=400 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=400 \
        --tables=3 \
        --time=20 \
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
        --threads=400 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=400 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=400 \
        --tables=3 \
        --time=20 \
        cleanup
done
# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/200_3_20_postgres.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/200_3_20_openGauss.log"
for number in {1..10}
do
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=200 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=200 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=200 \
        --tables=3 \
        --time=20 \
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
        --threads=200 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=200 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=200 \
        --tables=3 \
        --time=20 \
        cleanup
done
# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/100_3_20_postgres.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/100_3_20_openGauss.log"
for number in {1..10}
do
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=100 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=100 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=100 \
        --tables=3 \
        --time=20 \
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
        --threads=100 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=100 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=100 \
        --tables=3 \
        --time=20 \
        cleanup
done
# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/50_3_20_postgres.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/50_3_20_openGauss.log"
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
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=50 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=50 \
        --tables=3 \
        --time=20 \
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
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=50 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=50 \
        --tables=3 \
        --time=20 \
        cleanup
done
# Log file
LOGFILE1="/home/sjq/Documents/Assignment/CS213/ProjectThree/10_3_20_postgres.log"
LOGFILE3="/home/sjq/Documents/Assignment/CS213/ProjectThree/10_3_20_openGauss.log"
for number in {1..10}
do
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=10 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=10 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE1" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-user=postgres \
        --pgsql-password='2023Letmedo!' \
        --pgsql-db=postgres \
        --pgsql-host=localhost \
        --pgsql-port=25432 \
        --threads=10 \
        --tables=3 \
        --time=20 \
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
        --threads=10 \
        --tables=3 \
        --time=20 \
        prepare
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=10 \
        --tables=3 \
        --time=20 \
        run >> "$LOGFILE3" 2>&1
    sysbench oltp_read_write \
        --db-driver=pgsql \
        --pgsql-host=localhost \
        --pgsql-port=15432 \
        --pgsql-user=gaussdb \
        --pgsql-password='@Sjq123456' \
        --pgsql-db=postgres \
        --threads=10 \
        --tables=3 \
        --time=20 \
        cleanup
done
