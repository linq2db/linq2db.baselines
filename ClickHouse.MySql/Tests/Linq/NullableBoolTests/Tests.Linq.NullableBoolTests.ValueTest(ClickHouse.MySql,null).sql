BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS NullableBoolClass
(
	Value Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(NULL),
(true),
(false)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

