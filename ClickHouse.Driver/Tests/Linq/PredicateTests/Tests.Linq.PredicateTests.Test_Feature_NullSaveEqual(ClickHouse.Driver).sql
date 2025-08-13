BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.One <=> r.One

