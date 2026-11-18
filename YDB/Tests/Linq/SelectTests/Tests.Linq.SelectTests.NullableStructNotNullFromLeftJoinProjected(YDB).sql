-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	c_1.ParentID as ParentID
FROM
	Parent x
		LEFT JOIN Child c_1 ON c_1.ParentID = x.ParentID

