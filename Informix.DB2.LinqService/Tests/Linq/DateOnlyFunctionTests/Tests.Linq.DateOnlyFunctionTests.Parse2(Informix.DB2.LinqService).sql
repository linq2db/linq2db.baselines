BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	Day(d.TransactionDate) > 0

