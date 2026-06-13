-- YDB Ydb

SELECT
	t2.ParentID as ParentID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID
			FROM
				(
					SELECT DISTINCT
						a_Children.ParentID as ParentID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON p.ParentID = t2.ParentID

