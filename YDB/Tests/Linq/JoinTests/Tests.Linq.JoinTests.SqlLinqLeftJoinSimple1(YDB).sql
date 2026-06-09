-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN Child c_1 ON p.ParentID = c_1.ParentID

