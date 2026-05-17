-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	t2.ChildID
FROM
	Parent x
		INNER JOIN (
			SELECT DISTINCT
				c_2.ParentID as ParentID,
				c_2.ChildID as ChildID
			FROM
				(
					SELECT
						c_1.ParentID as ParentID,
						c_1.ChildID as ChildID
					FROM
						Child c_1
					UNION DISTINCT
					SELECT
						t1.ParentID as ParentID,
						t1.ChildID as ChildID
					FROM
						Child t1
				) c_2
		) t2 ON t2.ParentID = x.ParentID
LIMIT 10

