BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(left_1.ParentID),
	COUNT(p.ParentID),
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN Parent p ON p.ParentID = left_1.ParentID
LIMIT toInt32(2)

