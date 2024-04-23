BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ParentID,
	_.Value1
FROM
	Parent _
WHERE
	(
		SELECT
			CASE
				WHEN r.Value1 IS NOT NULL THEN true
				ELSE false
			END
		FROM
			Parent r
		LIMIT 1
	) = true

