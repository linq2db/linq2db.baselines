BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	t1.Count_1,
	t1.Sum_1
FROM
	Parent p
		INNER JOIN (
			SELECT
				COUNT(*) as Count_1,
				SUM(c_1.ChildID) as Sum_1,
				c_1.ParentID as ParentID
			FROM
				Child c_1
			GROUP BY
				c_1.ParentID
		) t1 ON t1.ParentID = p.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent p
		INNER JOIN (
			SELECT
				COUNT(*) as Count_1,
				c_1.ParentID as ParentID
			FROM
				Child c_1
			GROUP BY
				c_1.ParentID
		) t1 ON t1.ParentID = p.ParentID

