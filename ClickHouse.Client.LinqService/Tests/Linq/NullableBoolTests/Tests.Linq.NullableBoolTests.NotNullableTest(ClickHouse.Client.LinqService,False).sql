BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullableBoolClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NotNullableBoolClass
(
	Value Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NotNullableBoolClass
(
	Value
)
VALUES
(
	true
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NotNullableBoolClass
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
	NotNullableBoolClass t
WHERE
	t.Value

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	NOT t.Value

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullableBoolClass

