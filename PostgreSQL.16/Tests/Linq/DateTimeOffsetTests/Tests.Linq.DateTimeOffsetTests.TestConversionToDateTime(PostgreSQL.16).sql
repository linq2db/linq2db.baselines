-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."TransactionId",
	x."TransactionDate"::TimeStamp
FROM
	"DateTimeOffsetTable" x
ORDER BY
	x."TransactionDate"::TimeStamp

