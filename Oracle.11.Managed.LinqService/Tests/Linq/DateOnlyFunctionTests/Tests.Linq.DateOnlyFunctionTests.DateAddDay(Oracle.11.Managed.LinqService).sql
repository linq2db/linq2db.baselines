BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."TransactionDate" + 5 * INTERVAL '1' DAY
FROM
	"Transactions" t

