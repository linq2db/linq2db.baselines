-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Child t1
		GLOBAL LEFT SEMI JOIN Parent p ON t1.ParentID = p.ParentID

