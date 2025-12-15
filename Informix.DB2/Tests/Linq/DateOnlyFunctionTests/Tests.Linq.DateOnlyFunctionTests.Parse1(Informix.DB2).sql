-- Informix.DB2 Informix

SELECT
	('2010-01-' || Lpad(t.TransactionId,2,'0'))::DATETIME YEAR TO DAY
FROM
	Transactions t
WHERE
	Day(('2010-01-' || Lpad(t.TransactionId,2,'0'))::DATETIME YEAR TO DAY) > 0

-- Informix.DB2 Informix

SELECT
	t1.TransactionId,
	t1.TransactionDate
FROM
	Transactions t1

