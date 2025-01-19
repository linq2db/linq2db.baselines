BeforeExecute
-- Informix.DB2 Informix

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	Day(d.TransactionDate) > 0

