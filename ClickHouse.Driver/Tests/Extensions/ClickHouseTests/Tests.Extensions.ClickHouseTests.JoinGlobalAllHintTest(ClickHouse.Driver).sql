-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Child t1
		GLOBAL LEFT ALL JOIN Parent p ON t1.ParentID = p.ParentID

