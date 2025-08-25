BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" + 3 * INTERVAL '1' DAY
FROM
	"Transactions" t

