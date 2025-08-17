BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."TransactionDate" + -2 * INTERVAL '1' MONTH
FROM
	"Transactions" t

