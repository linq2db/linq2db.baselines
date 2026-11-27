-- ClickHouse.Octonica ClickHouse
SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

-- ClickHouse.Octonica ClickHouse
CREATE TABLE testdb1.QualifiedNameTable2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

