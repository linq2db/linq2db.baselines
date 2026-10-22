-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	c_1.ChildID as ChildID,
	c_1.ParentID as HasValue_1
FROM
	Parent p
		LEFT JOIN Child c_1 ON c_1.ParentID = p.ParentID

