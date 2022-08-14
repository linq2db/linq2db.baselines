BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ParentID,
	_.Value1
FROM
	Parent _
WHERE
	(
		SELECT
			r.GuidValue
		FROM
			LinqDataTypes r
		LIMIT toInt32(1)
	) IS NOT NULL

