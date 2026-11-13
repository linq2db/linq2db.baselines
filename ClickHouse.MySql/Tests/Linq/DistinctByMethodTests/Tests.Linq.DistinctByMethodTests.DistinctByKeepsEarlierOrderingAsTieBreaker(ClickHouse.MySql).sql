-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ChildID ORDER BY e.ParentID)) as RowNumber,
			e.ChildID as ChildID,
			e.ParentID as ParentID
		FROM
			Child e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID,
	t1.ChildID DESC

