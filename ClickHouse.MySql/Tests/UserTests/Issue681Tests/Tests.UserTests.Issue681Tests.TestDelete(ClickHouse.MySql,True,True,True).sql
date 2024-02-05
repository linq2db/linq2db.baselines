BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue681Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue681Table
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testdb3.Issue681Table
DELETE WHERE
	ID = toInt32(5)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue681Table

