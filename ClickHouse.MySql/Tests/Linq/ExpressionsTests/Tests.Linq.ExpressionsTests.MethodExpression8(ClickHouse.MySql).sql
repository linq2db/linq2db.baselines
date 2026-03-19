-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
		INNER JOIN Parent p ON p.ParentID = toInt32(Floor(toFloat64(t1.ChildID) / toFloat64(10)))
WHERE
	t1.ParentID = p.ParentID

