BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	r.ChildID
FROM
	Parent p
		RIGHT JOIN Child r ON p.ParentID = r.ParentID

