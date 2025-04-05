BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue681Table2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE Issue681Table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS Issue681Table2

