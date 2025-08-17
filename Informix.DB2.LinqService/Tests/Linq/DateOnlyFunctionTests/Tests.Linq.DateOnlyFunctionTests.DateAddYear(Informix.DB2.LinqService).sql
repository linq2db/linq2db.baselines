BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.TransactionDate + Interval (12) Year to Year
FROM
	Transactions t

