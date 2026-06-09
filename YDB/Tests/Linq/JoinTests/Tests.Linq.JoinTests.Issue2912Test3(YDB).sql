-- YDB Ydb

SELECT
	CASE
		WHEN t2.ParentID IS NOT NULL THEN t2.ChildID
		ELSE 0
	END as c1
FROM
	Parent employee
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON employee.ParentID = t2.ParentID
		LEFT JOIN GrandChild names_1 ON employee.ParentID = names_1.ParentID

