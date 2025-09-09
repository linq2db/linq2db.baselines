BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" - INTERVAL '3' MONTH
FROM
	"Transactions" t

