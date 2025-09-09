BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(Month(t.TransactionDate) - 1) / 3 + 1
FROM
	Transactions t

