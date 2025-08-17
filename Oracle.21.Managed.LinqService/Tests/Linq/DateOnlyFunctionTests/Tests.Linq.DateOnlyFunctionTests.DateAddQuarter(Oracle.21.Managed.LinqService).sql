BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" - INTERVAL '3' MONTH
FROM
	"Transactions" t

