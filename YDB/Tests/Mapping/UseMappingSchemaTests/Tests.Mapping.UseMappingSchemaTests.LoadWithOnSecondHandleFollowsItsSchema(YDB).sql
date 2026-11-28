-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_2,
	a_Parent.Value1 as Value1_1
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID

