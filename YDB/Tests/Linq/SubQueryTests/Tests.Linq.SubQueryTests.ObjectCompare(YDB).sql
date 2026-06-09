-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	c_1.ChildID + 1 as ChildID
FROM
	Parent p
		CROSS JOIN Child c_1
		INNER JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	c_1.ChildID > -1 AND p.ParentID = a_Parent.ParentID

