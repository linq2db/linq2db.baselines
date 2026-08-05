-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Parent p
		CROSS JOIN (
			SELECT
				c_1.ChildID as ChildID,
				a_Parent.ParentID as ParentID
			FROM
				Child c_1
					LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
		) t1
WHERE
	t1.ParentID = p.ParentID
ORDER BY
	p.ParentID,
	t1.ChildID

