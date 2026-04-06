-- DuckDB

SELECT
	CAST('2010-01-' || Lpad(CAST(t.TransactionId AS VARCHAR),2,'0') AS DATE)
FROM
	Transactions t
WHERE
	EXTRACT(day FROM CAST('2010-01-' || Lpad(CAST(t.TransactionId AS VARCHAR),2,'0') AS DATE)) > 0

-- DuckDB

SELECT
	t1.TransactionId,
	t1.TransactionDate
FROM
	Transactions t1

