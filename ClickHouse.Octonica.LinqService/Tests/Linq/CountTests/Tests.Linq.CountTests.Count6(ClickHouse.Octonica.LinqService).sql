BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			toInt32(0) as c1
		FROM
			Child t1
		GROUP BY
			t1.ParentID
		HAVING
			t1.ParentID > toInt32(2)
	) t2

