BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTrun

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE TestTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

TRUNCATE TABLE TestTrun

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE TestTrun

