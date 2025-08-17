BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS TestIdTrun

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE TestIdTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

TRUNCATE TABLE TestIdTrun

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE TestIdTrun

