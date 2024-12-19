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
	t.Value = false

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = true OR t.Value IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

