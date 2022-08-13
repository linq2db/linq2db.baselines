BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Bottom1.ParentID,
	a_Bottom1.ChildID,
	a_Bottom1.GrandChildID
FROM
	Parent t
		LEFT JOIN Child a_Middle ON t.ParentID = a_Middle.ParentID
		LEFT JOIN GrandChild a_Bottom1 ON a_Middle.ChildID = a_Bottom1.ChildID
WHERE
	t.ParentID IN (toInt32(1), toInt32(5))
ORDER BY
	t.ParentID

