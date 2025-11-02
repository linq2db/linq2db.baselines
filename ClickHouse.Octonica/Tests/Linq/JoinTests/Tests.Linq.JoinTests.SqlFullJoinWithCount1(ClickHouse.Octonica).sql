-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(t1.ParentID) = COUNT(right_1.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
FROM
	Parent t1
		FULL JOIN Parent right_1 ON right_1.ParentID = t1.ParentID
LIMIT 2

