-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestIdTrun

-- ClickHouse.MySql ClickHouse

CREATE TABLE TestIdTrun
(
	ID     Int32,
	Field1 Decimal128(10),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.MySql ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

-- ClickHouse.MySql ClickHouse

TRUNCATE TABLE TestIdTrun

-- ClickHouse.MySql ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.MySql ClickHouse

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	toDecimal128('1', 10)
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 1, 2

-- ClickHouse.MySql ClickHouse

DROP TABLE TestIdTrun

