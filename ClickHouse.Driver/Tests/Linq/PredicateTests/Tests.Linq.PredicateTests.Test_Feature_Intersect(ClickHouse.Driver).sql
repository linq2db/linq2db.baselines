BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		INTERSECT DISTINCT
		SELECT
			r.One
	)

