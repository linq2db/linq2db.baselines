﻿BeforeExecute
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
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue681Table2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue681Table

