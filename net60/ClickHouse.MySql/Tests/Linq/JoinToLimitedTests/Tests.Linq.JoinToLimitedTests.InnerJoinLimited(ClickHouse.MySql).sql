BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	o.ParentID,
	o.Value1,
	cg.ParentID,
	cg.ChildID
FROM
	Parent o
		INNER JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				Child t1
			LIMIT toInt32(1)
		) cg ON o.ParentID = cg.ParentID

