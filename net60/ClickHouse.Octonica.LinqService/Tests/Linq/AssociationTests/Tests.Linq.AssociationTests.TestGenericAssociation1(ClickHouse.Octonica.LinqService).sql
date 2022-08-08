BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_MiddleGeneric.ParentID,
	a_MiddleGeneric.ChildID,
	a_Bottom.ParentID,
	a_Bottom.ChildID,
	a_Bottom.GrandChildID
FROM
	Parent t
		LEFT JOIN Child a_MiddleGeneric ON t.ParentID = a_MiddleGeneric.ParentID AND a_MiddleGeneric.ChildID > toInt32(1)
		LEFT JOIN GrandChild a_Bottom ON a_MiddleGeneric.ChildID = a_Bottom.ChildID
WHERE
	t.ParentID IN (toInt32(1), toInt32(5))
ORDER BY
	t.ParentID

