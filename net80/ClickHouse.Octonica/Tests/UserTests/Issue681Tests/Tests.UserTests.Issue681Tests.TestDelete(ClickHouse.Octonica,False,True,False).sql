BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue681Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue681Table
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testdb1.Issue681Table
DELETE WHERE
	ID = toInt32(5)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue681Table

