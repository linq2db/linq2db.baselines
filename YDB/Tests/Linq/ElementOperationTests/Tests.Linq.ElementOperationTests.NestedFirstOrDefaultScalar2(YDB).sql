-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	t2.MaxChild as MaxChild
FROM
	Parent p
		LEFT JOIN (
			SELECT
				t1.MaxChild as MaxChild,
				t1.ParentID as ParentID
			FROM
				(
					SELECT
						c_1.ChildID as MaxChild,
						ROW_NUMBER() OVER (PARTITION BY a_Parent.ParentID ORDER BY c_1.ChildID * c_1.ParentID DESC) as rn,
						a_Parent.ParentID as ParentID
					FROM
						Child c_1
							LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.ParentID = p.ParentID

