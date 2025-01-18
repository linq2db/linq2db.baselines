BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.TransactionDate + Interval (-1) Day to Day * 7
FROM
	Transactions t

