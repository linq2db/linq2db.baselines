-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
		LIMIT 3
	) t2

