-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TestIdTrun

-- ClickHouse.Driver ClickHouse

CREATE TABLE TestIdTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.Driver ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

-- ClickHouse.Driver ClickHouse

TRUNCATE TABLE TestIdTrun

-- ClickHouse.Driver ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.Driver ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

-- ClickHouse.Driver ClickHouse

DROP TABLE TestIdTrun

