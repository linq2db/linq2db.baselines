BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" + 5 * INTERVAL '1' DAY
FROM
	"Transactions" t

