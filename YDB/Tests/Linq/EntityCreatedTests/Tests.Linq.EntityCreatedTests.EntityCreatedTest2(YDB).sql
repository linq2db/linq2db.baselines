-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child c_1
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
LIMIT $take

