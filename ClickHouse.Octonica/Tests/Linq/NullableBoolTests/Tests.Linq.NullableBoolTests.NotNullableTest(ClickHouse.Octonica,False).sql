BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NotNullableBoolClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS NotNullableBoolClass
(
	Value Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO NotNullableBoolClass
(
	Value
)
VALUES
(true),
(false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	NOT t.Value

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = false

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NotNullableBoolClass t
WHERE
	t.Value = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NotNullableBoolClass

