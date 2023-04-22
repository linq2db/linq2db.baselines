﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestIdTrun

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE TestIdTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT toInt32(1), toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

TRUNCATE TABLE TestIdTrun

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT toInt32(1), toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE TestIdTrun

