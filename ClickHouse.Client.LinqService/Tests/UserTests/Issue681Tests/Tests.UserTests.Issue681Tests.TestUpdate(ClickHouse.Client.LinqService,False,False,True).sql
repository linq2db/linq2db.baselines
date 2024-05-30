BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue681Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue681Table
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Issue681Table
UPDATE
	Value = 10
WHERE
	ID = 5

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue681Table

