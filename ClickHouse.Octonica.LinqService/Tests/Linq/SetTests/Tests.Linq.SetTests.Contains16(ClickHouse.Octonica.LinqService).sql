BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.ChildID,
	p.GrandChildID
FROM
	GrandChild p
		LEFT JOIN Child a_Child ON p.ParentID = a_Child.ParentID AND p.ChildID = a_Child.ChildID
WHERE
	(a_Child.ParentID = toInt32(1) AND a_Child.ChildID = toInt32(11) OR a_Child.ParentID = toInt32(2) AND a_Child.ChildID = toInt32(21))

