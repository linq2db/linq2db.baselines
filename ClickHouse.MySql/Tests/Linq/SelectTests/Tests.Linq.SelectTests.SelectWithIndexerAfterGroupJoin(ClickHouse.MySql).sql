-- ClickHouse.MySql ClickHouse
SELECT
	x_1.ParentID,
	x_1.Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY x.ParentID DESC) - toInt64(1) as Index_1,
			x.ParentID as ParentID
		FROM
			Parent x
	) x_1
WHERE
	x_1.Index_1 >= toInt64(0)
ORDER BY
	x_1.ParentID DESC

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

