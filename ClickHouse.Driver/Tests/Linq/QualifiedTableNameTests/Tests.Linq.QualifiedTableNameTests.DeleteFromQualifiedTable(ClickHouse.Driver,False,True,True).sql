-- ClickHouse.Driver ClickHouse
SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Driver ClickHouse
ALTER TABLE
	testdb2.QualifiedNameTable
DELETE WHERE
	ID = 5

