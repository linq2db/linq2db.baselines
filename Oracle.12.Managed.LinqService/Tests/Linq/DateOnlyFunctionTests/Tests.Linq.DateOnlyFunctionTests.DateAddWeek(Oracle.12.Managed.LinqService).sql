BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" - INTERVAL '7' DAY
FROM
	"Transactions" t

