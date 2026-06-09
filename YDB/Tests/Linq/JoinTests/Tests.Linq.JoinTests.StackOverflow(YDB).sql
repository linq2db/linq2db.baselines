-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID
FROM
	Child c_1
		INNER JOIN Parent p ON c_1.ParentID = p.ParentID

