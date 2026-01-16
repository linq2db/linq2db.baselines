-- ClickHouse.Driver ClickHouse

SELECT
	CASE
		WHEN t2.cond IS NULL THEN 0
		ELSE t2.cond
	END,
	t2.ParentID,
	t2.ChildID
FROM
	(
		SELECT
			(
				SELECT
					c_2.ParentID
				FROM
					Child c_2
				WHERE
					c_2.ParentID > 0
				ORDER BY
					c_2.ParentID
				LIMIT 1
			) as cond,
			t1.ParentID as ParentID,
			t1.ChildID as ChildID,
			p.ParentID as ParentID_1
		FROM
			Parent p
				LEFT JOIN (
					SELECT
						c_1.ParentID as ParentID,
						c_1.ChildID as ChildID
					FROM
						Child c_1
					WHERE
						c_1.ChildID > -100
					ORDER BY
						c_1.ParentID
					LIMIT 1
				) t1 ON 1=1
	) t2
ORDER BY
	t2.ParentID_1

