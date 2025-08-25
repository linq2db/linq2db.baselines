BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" - INTERVAL '3' MONTH
FROM
	"Transactions" t

