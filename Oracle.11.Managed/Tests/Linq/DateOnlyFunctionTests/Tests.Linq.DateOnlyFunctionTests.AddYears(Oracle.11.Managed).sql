BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."TransactionDate" + 12 * INTERVAL '1' YEAR
FROM
	"Transactions" t

