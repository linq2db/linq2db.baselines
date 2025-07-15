BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.TransactionDate + Interval (3) Day to Day
FROM
	Transactions t

