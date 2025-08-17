BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" + 2 * INTERVAL '1' MONTH
FROM
	"Transactions" t

