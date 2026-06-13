-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
		INNER JOIN Parent p ON c_1.ParentID = p.ParentID

