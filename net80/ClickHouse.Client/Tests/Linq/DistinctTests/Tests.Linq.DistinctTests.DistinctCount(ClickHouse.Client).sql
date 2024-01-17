BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
				INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
		WHERE
			c_1.ChildID > toInt32(20)
	) t1

