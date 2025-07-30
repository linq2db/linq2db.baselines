BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.TransactionDate + Interval (5) Day to Day
FROM
	Transactions t

