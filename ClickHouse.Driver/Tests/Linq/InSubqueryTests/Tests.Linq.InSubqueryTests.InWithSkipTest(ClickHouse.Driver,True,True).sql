-- ClickHouse.Driver ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID IN (
		SELECT
			t1.ParentID as ParentID
		FROM
			(
				SELECT
					v.ParentID as ParentID
				FROM
					Parent v
				LIMIT 100, 18446744073709551615
			) t1
	)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

