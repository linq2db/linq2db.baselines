BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" + 5 * INTERVAL '1' DAY
FROM
	"Transactions" t

