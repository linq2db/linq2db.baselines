BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NullableBoolClass
(
	Value Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	true
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	false
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

