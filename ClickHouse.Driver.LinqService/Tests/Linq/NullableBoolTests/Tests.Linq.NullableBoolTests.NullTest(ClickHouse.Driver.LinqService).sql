BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Value
FROM
	NullableBoolClass t
WHERE
	t.Value IS NOT NULL

