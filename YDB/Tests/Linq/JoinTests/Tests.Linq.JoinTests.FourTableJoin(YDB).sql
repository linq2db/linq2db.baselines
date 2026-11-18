-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	c1.ChildID as ChildID,
	c2.GrandChildID as GrandChildID,
	c3.GrandChildID as c3Key_1
FROM
	Parent p
		INNER JOIN Child c1 ON p.ParentID = c1.ParentID
		INNER JOIN GrandChild c2 ON c1.ParentID = c2.ParentID
		INNER JOIN GrandChild c3 ON c2.ParentID = c3.ParentID

