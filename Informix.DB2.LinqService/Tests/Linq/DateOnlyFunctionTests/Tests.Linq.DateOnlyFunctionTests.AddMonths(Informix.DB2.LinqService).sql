BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.TransactionDate + Interval (-2) Month to Month
FROM
	Transactions t

