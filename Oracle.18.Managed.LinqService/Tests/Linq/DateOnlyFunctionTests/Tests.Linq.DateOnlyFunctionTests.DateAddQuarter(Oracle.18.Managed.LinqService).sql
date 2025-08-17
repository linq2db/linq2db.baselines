BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" - INTERVAL '3' MONTH
FROM
	"Transactions" t

