-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.One IS DISTINCT FROM r.One

