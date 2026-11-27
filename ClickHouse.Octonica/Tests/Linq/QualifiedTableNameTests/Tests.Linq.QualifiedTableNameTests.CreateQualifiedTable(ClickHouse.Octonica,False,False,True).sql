-- ClickHouse.Octonica ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

-- ClickHouse.Octonica ClickHouse
CREATE TABLE QualifiedNameTable2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse
DROP TABLE IF EXISTS QualifiedNameTable2

