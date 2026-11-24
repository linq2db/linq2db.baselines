-- Informix.DB2 Informix
SELECT
	((Month(t.TransactionDate) - 1) / 3)::Int + 1
FROM
	Transactions t

