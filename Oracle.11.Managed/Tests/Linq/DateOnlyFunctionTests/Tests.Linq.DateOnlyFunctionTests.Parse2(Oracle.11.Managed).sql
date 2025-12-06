-- Oracle.11.Managed Oracle11

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	EXTRACT(DAY FROM d."TransactionDate") > 0

