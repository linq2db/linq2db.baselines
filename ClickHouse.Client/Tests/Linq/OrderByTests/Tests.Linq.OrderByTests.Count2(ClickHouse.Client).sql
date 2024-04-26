BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
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

