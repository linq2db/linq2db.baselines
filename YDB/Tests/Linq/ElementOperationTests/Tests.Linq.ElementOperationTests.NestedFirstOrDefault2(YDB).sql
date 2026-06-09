-- YDB Ydb

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON p.ParentID = t2.ParentID

