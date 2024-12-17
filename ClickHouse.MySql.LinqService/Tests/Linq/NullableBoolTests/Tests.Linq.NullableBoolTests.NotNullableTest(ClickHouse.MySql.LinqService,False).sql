BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NotNullableBoolClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS NotNullableBoolClass
(
	Value Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NotNullableBoolClass
(
	Value
)
VALUES
(
	true
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NotNullableBoolClass
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
	NotNullableBoolClass t
WHERE
	t.Value

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	NOT t.Value

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NotNullableBoolClass

