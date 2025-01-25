BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS NullableBoolClass
(
	Value Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(NULL),
(true),
(false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

