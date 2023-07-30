BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(c_1.ChildID),
	MAX(c_1.ChildID),
	MAX(ALL c_1.ChildID),
	MAX(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(c_1.ParentID)
FROM
	Child c_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	MAX(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	MAX(DISTINCT t1.ParentID)
FROM
	Child t1

