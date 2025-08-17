BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.TransactionDate + Interval (5) Day to Day
FROM
	Transactions t

