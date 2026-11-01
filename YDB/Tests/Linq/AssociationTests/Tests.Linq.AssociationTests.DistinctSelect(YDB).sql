-- YDB Ydb
SELECT
	c_2.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID_1 as ParentID,
			t1.ChildID as ChildID
		FROM
			GrandChild c_1
				LEFT JOIN (
					SELECT
						a_Parent.ParentID as ParentID,
						a_Child.ParentID as ParentID_1,
						a_Child.ChildID as ChildID
					FROM
						Child a_Child
							LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
				) t1 ON c_1.ParentID = t1.ParentID_1 AND c_1.ChildID = t1.ChildID
		WHERE
			t1.ParentID > 0
	) c_2

