BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."TransactionDate" - INTERVAL '3' MONTH
FROM
	"Transactions" t

