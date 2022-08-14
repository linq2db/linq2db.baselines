BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.c1,
	Count(*)
FROM
	(
		SELECT
			toInt32(1) as c1
		FROM
			Person _
		WHERE
			1 = 0
	) t1
GROUP BY
	t1.c1

