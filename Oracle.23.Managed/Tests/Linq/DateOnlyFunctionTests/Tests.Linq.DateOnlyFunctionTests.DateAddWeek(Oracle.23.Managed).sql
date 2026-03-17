-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" - INTERVAL '7' DAY
FROM
	"Transactions" t

