BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.ChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(2))
GROUP BY
	x.ChildID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(2)) AND x.ChildID = toInt32(21)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(2)) AND x.ChildID = toInt32(22)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.ChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(3))
GROUP BY
	x.ChildID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(3)) AND x.ChildID = toInt32(31)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(3)) AND x.ChildID = toInt32(33)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(3)) AND x.ChildID = toInt32(32)

