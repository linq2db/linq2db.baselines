BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" + 12 * INTERVAL '1' YEAR
FROM
	"Transactions" t

