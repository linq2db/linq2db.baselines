-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Parent p
		CROSS JOIN Child c_1
		INNER JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	p.ParentID = a_Parent.ParentID
ORDER BY
	p.ParentID,
	c_1.ChildID

