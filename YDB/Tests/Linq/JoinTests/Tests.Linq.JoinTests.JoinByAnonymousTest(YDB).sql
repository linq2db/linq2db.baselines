-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Parent p
		INNER JOIN (
			SELECT
				a_Parent.ParentID as ParentID,
				c_1.ParentID as ParentID_1,
				c_1.ChildID as ChildID
			FROM
				Child c_1
					LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
		) t1 ON p.ParentID = t1.ParentID AND p.ParentID = t1.ParentID_1

