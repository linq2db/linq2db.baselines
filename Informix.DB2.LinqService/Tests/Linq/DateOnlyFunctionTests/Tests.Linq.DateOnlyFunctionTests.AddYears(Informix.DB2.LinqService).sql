BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.TransactionDate + Interval (12) Year to Year
FROM
	Transactions t

