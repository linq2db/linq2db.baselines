﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TestIdTrun

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE TestIdTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

TRUNCATE TABLE TestIdTrun

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal64('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE TestIdTrun

