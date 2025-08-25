BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	WeekDay(t.TransactionDate) + 1
FROM
	Transactions t

