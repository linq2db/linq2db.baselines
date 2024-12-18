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
(
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO NullableBoolClass
(
	Value
)
VALUES
(
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value = false AND t.Value IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NullableBoolClass

