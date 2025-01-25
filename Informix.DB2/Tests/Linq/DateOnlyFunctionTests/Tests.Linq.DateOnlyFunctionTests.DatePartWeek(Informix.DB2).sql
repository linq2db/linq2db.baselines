BeforeExecute
-- Informix.DB2 Informix

SELECT
	(Extend(t.TransactionDate, Year to Day) - Mdy(12, 31 - WeekDay(Mdy(1, 1, Year(t.TransactionDate))), Year(t.TransactionDate) - 1)) / 7 + Interval (1) Day to Day
FROM
	Transactions t

