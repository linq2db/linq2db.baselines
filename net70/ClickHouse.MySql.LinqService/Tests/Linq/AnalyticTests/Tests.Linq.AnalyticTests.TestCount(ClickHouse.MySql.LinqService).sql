BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*),
	COUNT(c_1.ChildID),
	COUNT(ALL c_1.ChildID),
	COUNT(DISTINCT c_1.ChildID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(t1.ParentID)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(DISTINCT t1.ParentID)
FROM
	Child t1

