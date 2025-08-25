BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.TransactionDate + Interval (-1) Day to Day * 7
FROM
	Transactions t

