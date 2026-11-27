-- ClickHouse.Octonica ClickHouse
SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	testdb1.QualifiedNameTable
DELETE WHERE
	ID = 5

