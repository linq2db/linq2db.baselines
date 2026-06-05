-- Oracle.11.Managed Oracle11

SELECT
	t1."TransactionId",
	t1."TransactionDate"
FROM
	"DateTimeOffsetTable" t1
WHERE
	ROWNUM <= 1

