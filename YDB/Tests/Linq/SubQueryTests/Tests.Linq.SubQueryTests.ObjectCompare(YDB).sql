-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	c_2.ChildID as ChildID
FROM
	Parent p
		CROSS JOIN (
			SELECT
				a_Parent.ParentID as ParentID,
				c_1.ChildID + 1 as ChildID
			FROM
				Child c_1
					LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
			WHERE
				c_1.ChildID > -1
		) c_2
WHERE
	p.ParentID = c_2.ParentID

