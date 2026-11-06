-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	toBool(NULL)
FROM
	NullableFlagTable r
ORDER BY
	r.Id

