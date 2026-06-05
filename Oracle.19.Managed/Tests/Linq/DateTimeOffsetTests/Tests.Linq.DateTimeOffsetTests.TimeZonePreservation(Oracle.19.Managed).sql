-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."TransactionId",
	t1."TransactionDate"
FROM
	"DateTimeOffsetTable" t1
FETCH NEXT 1 ROWS ONLY

