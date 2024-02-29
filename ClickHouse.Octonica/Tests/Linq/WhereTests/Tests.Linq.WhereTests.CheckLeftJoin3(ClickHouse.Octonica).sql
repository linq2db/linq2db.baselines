BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		LEFT JOIN (
			SELECT
				toInt32(1) + c_1.ParentID as ch,
				c_1.ChildID as ChildID
			FROM
				GrandChild c_1
			WHERE
				c_1.ParentID > toInt32(0)
		) t1 ON p.ParentID = t1.ch
WHERE
	t1.ch IS NULL AND
	t1.ChildID IS NULL AND
	t1.ch IS NULL AND
	t1.ChildID IS NULL

