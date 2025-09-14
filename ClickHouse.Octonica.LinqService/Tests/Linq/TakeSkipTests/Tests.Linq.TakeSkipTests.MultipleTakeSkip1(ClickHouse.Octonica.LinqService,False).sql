BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
LIMIT 3, 1

