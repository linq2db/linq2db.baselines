BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.ChildID
FROM
	Child p
		INNER JOIN Parent a_Parent1 ON p.ParentID = a_Parent1.ParentID
WHERE
	a_Parent1.ParentID IN (toInt32(1), toInt32(2))

