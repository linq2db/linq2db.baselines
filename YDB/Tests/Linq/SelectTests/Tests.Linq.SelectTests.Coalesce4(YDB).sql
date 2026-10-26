-- YDB Ydb
SELECT
	Coalesce(t2.Value1, c_1.ChildID) as c1
FROM
	Child c_1
		LEFT JOIN (
			SELECT
				t1.Value1 as Value1,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_Parent.Value1 as Value1,
						ROW_NUMBER() OVER (PARTITION BY ch.ChildID ORDER BY ch.ChildID) as rn,
						ch.ChildID as ChildID
					FROM
						Child ch
							LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.ChildID = c_1.ChildID

