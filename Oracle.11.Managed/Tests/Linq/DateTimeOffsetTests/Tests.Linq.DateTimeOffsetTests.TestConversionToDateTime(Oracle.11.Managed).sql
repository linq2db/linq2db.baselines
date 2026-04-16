-- Oracle.11.Managed Oracle11

SELECT
	x."TransactionId",
	CAST(x."TransactionDate" AS timestamp)
FROM
	"DateTimeOffsetTable" x
ORDER BY
	CAST(x."TransactionDate" AS timestamp)

