BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	EXTRACT(DAY FROM t."TransactionDate")
FROM
	"Transactions" t

