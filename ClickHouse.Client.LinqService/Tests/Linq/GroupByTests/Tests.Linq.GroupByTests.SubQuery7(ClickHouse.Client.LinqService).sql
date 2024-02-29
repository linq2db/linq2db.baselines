BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				c_1.ParentID as c_1,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID = toInt32(1)
		) t1 ON p.ParentID = t1.c_1
GROUP BY
	t1.ChildID

