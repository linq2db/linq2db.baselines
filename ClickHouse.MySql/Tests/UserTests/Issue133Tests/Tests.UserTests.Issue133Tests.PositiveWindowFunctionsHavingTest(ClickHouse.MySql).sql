BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	(toFloat64(_1.COUNT_1) * toFloat64(100)) / SUM(_1.COUNT_1) OVER(),
	_1.SUM_1
FROM
	(
		SELECT
			COUNT(*) as COUNT_1,
			sumOrNull(_.ParentID) as SUM_1
		FROM
			Child _
		GROUP BY
			_.ParentID
		HAVING
			(sumOrNull(_.ParentID) <> 36 OR sumOrNull(_.ParentID) IS NULL)
	) _1

