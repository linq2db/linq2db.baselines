-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	x."TransactionId",
	x."TransactionDate"::TimeStamp
FROM
	"DateTimeOffsetTable" x
ORDER BY
	x."TransactionDate"::TimeStamp

