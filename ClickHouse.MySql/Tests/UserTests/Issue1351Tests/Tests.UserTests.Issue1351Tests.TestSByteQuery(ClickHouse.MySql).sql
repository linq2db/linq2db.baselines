BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS T1351Model

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS T1351Model
(
	ID           Int32,
	TestField    Int8,
	TestNullable Nullable(Int8)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.TestField,
	t1.TestNullable
FROM
	T1351Model t1
WHERE
	t1.TestField = toInt8(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.TestField,
	t1.TestNullable
FROM
	T1351Model t1
WHERE
	t1.TestNullable <> toInt8(1) OR t1.TestNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS T1351Model

