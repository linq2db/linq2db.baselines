-- YDB Ydb
SELECT
	EXISTS(
		SELECT
			1
		FROM
			GrandChild r
				LEFT JOIN (
					SELECT
						a_Parent.ParentID as ParentID,
						a_Child.ParentID as ParentID_1,
						a_Child.ChildID as ChildID
					FROM
						Child a_Child
							LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
				) t1 ON r.ParentID = t1.ParentID_1 AND r.ChildID = t1.ChildID
		WHERE
			t1.ParentID = 1
	) as c1

