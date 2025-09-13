BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

