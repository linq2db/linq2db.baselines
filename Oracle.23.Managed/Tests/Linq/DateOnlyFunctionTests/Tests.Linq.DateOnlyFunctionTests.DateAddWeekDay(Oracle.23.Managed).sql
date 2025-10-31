-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + INTERVAL '1' DAY
FROM
	"Transactions" t

