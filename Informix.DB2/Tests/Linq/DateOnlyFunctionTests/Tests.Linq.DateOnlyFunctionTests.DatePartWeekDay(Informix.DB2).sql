-- Informix.DB2 Informix

SELECT
	WeekDay(t.TransactionDate) + 1
FROM
	Transactions t

