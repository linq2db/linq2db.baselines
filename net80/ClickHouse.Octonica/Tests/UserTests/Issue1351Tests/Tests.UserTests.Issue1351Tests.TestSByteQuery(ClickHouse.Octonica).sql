BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS T1351Model

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS T1351Model
(
	ID           Int32,
	TestField    Int8,
	TestNullable Nullable(Int8)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ID,
	_.TestField,
	_.TestNullable
FROM
	T1351Model _
WHERE
	_.TestField = toInt8(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ID,
	_.TestField,
	_.TestNullable
FROM
	T1351Model _
WHERE
	(_.TestNullable <> toInt8(1) OR _.TestNullable IS NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS T1351Model

