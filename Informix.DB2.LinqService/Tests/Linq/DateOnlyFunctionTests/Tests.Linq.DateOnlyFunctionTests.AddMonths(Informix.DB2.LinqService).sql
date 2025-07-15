BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.TransactionDate + Interval (-2) Month to Month
FROM
	Transactions t

