BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	EXTRACT(DAY FROM d."TransactionDate") > 0

