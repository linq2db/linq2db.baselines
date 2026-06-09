-- YDB Ydb

SELECT
	c_1.ChildID as ChildID,
	c_1.ParentID as ParentID
FROM
	Child c_1
		INNER JOIN Parent p1 ON c_1.ParentID = p1.ParentID

