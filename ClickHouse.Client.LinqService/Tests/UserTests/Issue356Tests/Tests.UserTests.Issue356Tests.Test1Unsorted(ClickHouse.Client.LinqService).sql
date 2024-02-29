BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	cp.ParentID,
	c_1.ChildID
FROM
	Parent cp
		INNER JOIN (
			SELECT DISTINCT
				t3.ParentID as ParentID,
				t3.ChildID as ChildID
			FROM
				(
					SELECT
						t1.ParentID as ParentID,
						t1.ChildID as ChildID
					FROM
						Child t1
					UNION DISTINCT
					SELECT
						t2.ParentID as ParentID,
						t2.ChildID as ChildID
					FROM
						Child t2
				) t3
		) c_1 ON c_1.ParentID = cp.ParentID
LIMIT toInt32(10)

