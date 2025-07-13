BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID IN (
		SELECT
			p.ParentID
		FROM
			Parent p
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

