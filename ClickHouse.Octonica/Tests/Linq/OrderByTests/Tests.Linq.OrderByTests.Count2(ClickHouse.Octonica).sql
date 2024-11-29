BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
		LIMIT 3
	) t2

