BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID,
	_.Value1
FROM
	Parent _
WHERE
	(
		SELECT
			r.Value1
		FROM
			Parent r
		LIMIT toInt32(1)
	) IS NOT NULL

