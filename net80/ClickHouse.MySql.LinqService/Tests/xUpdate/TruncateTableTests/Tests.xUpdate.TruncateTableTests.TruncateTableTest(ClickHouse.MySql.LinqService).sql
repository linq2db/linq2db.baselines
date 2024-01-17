BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTrun

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE TestTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

TRUNCATE TABLE TestTrun

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE TestTrun

