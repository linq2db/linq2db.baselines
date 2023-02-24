BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	minOrNull(c_1.ChildID),
	MIN(c_1.ChildID),
	MIN(ALL c_1.ChildID),
	MIN(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	minOrNull(c_1.ParentID)
FROM
	Child c_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	MIN(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	MIN(DISTINCT t1.ParentID)
FROM
	Child t1

