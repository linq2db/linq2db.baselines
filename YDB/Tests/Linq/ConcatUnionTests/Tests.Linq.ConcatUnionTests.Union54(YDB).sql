-- YDB Ydb

SELECT
	p1.ParentID as ParentID,
	p1.ParentID as ParentID_1,
	p1.Value1 as Value1,
	CAST(NULL AS Int32) as c1,
	CAST(NULL AS Int32) as ParentID_2,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p1
UNION
SELECT
	Coalesce(p2.Value1, 0) as ParentID,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as Value1,
	t2.ParentID as c1,
	t2.ParentID as ParentID_2,
	t2.ChildID as ChildID
FROM
	Parent p2
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID DESC) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON p2.ParentID = t2.ParentID

