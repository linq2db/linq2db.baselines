-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + 3 * INTERVAL '1' DAY
FROM
	"Transactions" t

