-- YDB Ydb

SELECT
	c1.ChildID as ChildID,
	c2.ParentID as ParentID
FROM
	Parent p
		INNER JOIN Child c1 ON p.ParentID = c1.ParentID
		INNER JOIN Child c2 ON p.ParentID = c2.ParentID

