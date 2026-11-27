-- ClickHouse.MySql ClickHouse
SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

-- ClickHouse.MySql ClickHouse
CREATE TABLE testdb3.QualifiedNameTable2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

