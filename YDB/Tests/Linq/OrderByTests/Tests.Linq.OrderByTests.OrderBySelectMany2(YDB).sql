-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Parent p
		CROSS JOIN (
			SELECT
				c_1.ChildID as ChildID,
				a_Parent1.ParentID as ParentID
			FROM
				Child c_1
					INNER JOIN Parent a_Parent1 ON c_1.ParentID = a_Parent1.ParentID
		) t1
WHERE
	p.ParentID = t1.ParentID
ORDER BY
	p.ParentID,
	t1.ChildID

