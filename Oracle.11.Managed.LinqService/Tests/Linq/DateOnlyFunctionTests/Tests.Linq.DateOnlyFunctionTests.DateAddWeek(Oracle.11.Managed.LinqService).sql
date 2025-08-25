BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."TransactionDate" - INTERVAL '7' DAY
FROM
	"Transactions" t

