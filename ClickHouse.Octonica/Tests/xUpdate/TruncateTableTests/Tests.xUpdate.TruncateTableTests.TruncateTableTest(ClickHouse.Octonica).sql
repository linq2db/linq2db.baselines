BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TestTrun

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE TestTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

TRUNCATE TABLE TestTrun

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE TestTrun

