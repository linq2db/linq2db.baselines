-- ClickHouse.MySql ClickHouse
SELECT
	c_1.ChildID,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS NULL OR p.Value1 <> c_1.ParentID
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS NULL OR p.Value1 <> c_1.ParentID
			THEN 'bad'
		ELSE NULL
	END
FROM
	Parent p
		CROSS JOIN Child c_1
WHERE
	c_1.ParentID = p.ParentID

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

-- ClickHouse.MySql ClickHouse
SELECT
	toString(NULL)

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	toString(NULL)

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	toString(NULL)

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	c_1.ChildID,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS NULL OR p.Value1 <> c_1.ParentID
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS NULL OR p.Value1 <> c_1.ParentID
			THEN 'bad'
		ELSE NULL
	END
FROM
	Parent p,
	Child c_1
WHERE
	c_1.ParentID = p.ParentID

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

-- ClickHouse.MySql ClickHouse
SELECT
	toString(NULL)

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	toString(NULL)

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	toString(NULL)

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

-- ClickHouse.MySql ClickHouse
SELECT
	'bad'

