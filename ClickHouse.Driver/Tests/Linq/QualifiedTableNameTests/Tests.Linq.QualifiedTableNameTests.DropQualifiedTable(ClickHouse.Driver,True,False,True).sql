-- ClickHouse.Driver ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

-- ClickHouse.Driver ClickHouse
CREATE TABLE QualifiedNameTable2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse
DROP TABLE QualifiedNameTable2

