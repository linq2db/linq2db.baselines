-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + 2 * INTERVAL '1' MONTH
FROM
	"Transactions" t

