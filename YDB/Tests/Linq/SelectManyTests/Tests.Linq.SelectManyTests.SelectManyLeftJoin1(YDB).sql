-- YDB Ydb

SELECT
	p.Value1 as Value1,
	c_1.ChildID as ChildID,
	p.ParentID as ParentID
FROM
	Parent p
		LEFT JOIN Child c_1 ON p.ParentID = c_1.ParentID

