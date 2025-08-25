BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."TransactionDate" + 12 * INTERVAL '1' YEAR
FROM
	"Transactions" t

