-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TestTrun

-- ClickHouse.Octonica ClickHouse

CREATE TABLE TestTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

TRUNCATE TABLE TestTrun

-- ClickHouse.Octonica ClickHouse

DROP TABLE TestTrun

