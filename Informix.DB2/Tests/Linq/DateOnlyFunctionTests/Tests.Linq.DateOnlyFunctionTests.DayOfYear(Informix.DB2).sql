BeforeExecute
-- Informix.DB2 Informix

SELECT
	Mdy(Month(t.TransactionDate), Day(t.TransactionDate), Year(t.TransactionDate)) - Mdy(1, 1, Year(t.TransactionDate)) + 1
FROM
	Transactions t

