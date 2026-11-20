-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS DISTINCT FROM c_1.ParentID
			THEN 5
		ELSE 3
	END as Status,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS DISTINCT FROM c_1.ParentID
			THEN 'bad'u
		ELSE NULL
	END as c1
FROM
	Parent p
		CROSS JOIN Child c_1
WHERE
	c_1.ParentID = p.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

-- YDB Ydb
SELECT
	CAST(NULL AS Text) as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	CAST(NULL AS Text) as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	CAST(NULL AS Text) as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS DISTINCT FROM c_1.ParentID
			THEN 5
		ELSE 3
	END as Status,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR p.Value1 IS DISTINCT FROM c_1.ParentID
			THEN 'bad'u
		ELSE NULL
	END as c1
FROM
	Parent p
		CROSS JOIN Child c_1
WHERE
	c_1.ParentID = p.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

-- YDB Ydb
SELECT
	CAST(NULL AS Text) as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	CAST(NULL AS Text) as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	CAST(NULL AS Text) as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

-- YDB Ydb
SELECT
	'bad'u as c1

