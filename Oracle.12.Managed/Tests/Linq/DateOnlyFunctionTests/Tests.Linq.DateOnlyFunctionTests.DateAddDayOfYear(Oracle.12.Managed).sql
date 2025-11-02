-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + 3 * INTERVAL '1' DAY
FROM
	"Transactions" t

