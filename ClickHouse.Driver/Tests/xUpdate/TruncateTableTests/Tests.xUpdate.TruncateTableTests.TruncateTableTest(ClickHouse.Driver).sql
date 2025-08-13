BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestTrun

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE TestTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

TRUNCATE TABLE TestTrun

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE TestTrun

