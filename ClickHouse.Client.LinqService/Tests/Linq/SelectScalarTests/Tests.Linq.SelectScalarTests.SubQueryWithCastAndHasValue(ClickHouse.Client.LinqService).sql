BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
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

