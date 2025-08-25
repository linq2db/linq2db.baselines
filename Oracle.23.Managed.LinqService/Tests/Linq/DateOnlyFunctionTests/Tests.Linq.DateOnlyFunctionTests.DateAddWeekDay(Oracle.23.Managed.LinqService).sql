BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."TransactionDate" + INTERVAL '1' DAY
FROM
	"Transactions" t

