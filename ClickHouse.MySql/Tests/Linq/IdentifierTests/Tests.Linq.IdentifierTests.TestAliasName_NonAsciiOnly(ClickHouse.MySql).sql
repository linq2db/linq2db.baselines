-- ClickHouse.MySql ClickHouse
SELECT
	`親`.ParentID,
	`親`.Value1
FROM
	Parent `親`
		INNER JOIN Child `子` ON `子`.ParentID = `親`.ParentID
WHERE
	`親`.ParentID = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

