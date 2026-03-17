-- Informix.DB2 Informix

SELECT
	t.TransactionDate + Interval (-1) Month to Month * 3
FROM
	Transactions t

