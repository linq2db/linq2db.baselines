-- ClickHouse.MySql ClickHouse
SELECT
	t1.RowNumber_2,
	t1.RowNumber_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ChildID ORDER BY e.ParentID)) as RowNumber,
			e.ChildID as RowNumber_1,
			e.ParentID as RowNumber_2
		FROM
			Child e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_1 DESC

