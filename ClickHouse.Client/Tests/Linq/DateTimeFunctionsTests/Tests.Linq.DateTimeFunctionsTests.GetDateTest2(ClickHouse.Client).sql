BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.c1,
	Count(*)
FROM
	(
		SELECT
			toDate32(now()) as c1
		FROM
			Parent v
				INNER JOIN Child s ON v.ParentID = s.ParentID
		WHERE
			v.Value1 > toInt32(0)
	) t1
GROUP BY
	t1.c1
LIMIT toInt32(5)

