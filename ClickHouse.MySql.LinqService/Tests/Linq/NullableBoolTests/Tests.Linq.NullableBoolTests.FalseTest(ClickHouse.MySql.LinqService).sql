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
(
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	true
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = true OR t.Value IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

