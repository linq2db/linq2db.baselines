BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue681Table2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Issue681Table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE Issue681Table2

