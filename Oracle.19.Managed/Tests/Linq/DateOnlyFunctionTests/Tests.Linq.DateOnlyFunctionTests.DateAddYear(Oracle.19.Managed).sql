-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + 12 * INTERVAL '1' YEAR
FROM
	"Transactions" t

