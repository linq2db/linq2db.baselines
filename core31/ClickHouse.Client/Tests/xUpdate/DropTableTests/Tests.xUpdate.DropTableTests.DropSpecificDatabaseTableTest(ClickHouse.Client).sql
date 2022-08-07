﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO testdb2.DropTableTest
(
	ID
)
VALUES
(
	toInt32(123)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	testdb2.DropTableTest t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE testdb2.DropTableTest

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	testdb2.DropTableTest t1

