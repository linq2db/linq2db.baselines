-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."TransactionId",
	CAST(x."TransactionDate" AS timestamp)
FROM
	"DateTimeOffsetTable" x
ORDER BY
	CAST(x."TransactionDate" AS timestamp)

