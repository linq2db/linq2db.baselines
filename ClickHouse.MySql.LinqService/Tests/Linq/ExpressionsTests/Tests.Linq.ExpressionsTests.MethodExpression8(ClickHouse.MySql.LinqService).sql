BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
		INNER JOIN Parent p ON p.ParentID = toInt32(Floor(toFloat64(ch.ChildID) / toFloat64(10)))
WHERE
	ch.ParentID = p.ParentID

