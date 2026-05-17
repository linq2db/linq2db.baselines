-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + 12 * INTERVAL '1' YEAR
FROM
	"Transactions" t

