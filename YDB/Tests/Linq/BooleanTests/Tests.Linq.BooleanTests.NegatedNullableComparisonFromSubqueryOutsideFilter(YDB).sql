-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	CASE
		WHEN x_1.c1 IS NULL THEN NULL
		ELSE x_1.ParentID
	END as ParentID
FROM
	Child c_1
		LEFT JOIN (
			SELECT
				CASE
					WHEN x.Value1 = 1 THEN true
					ELSE false
				END as c1,
				x.ParentID as ParentID
			FROM
				Parent x
			WHERE
				x.Value1 <> 1 OR x.Value1 IS NULL
		) x_1 ON x_1.ParentID = c_1.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	x.ParentID as ParentID,
	CASE
		WHEN x.Value1 <> 1 OR x.Value1 IS NULL THEN 1
		ELSE 0
	END as R
FROM
	Parent x

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	x.Value1 <> 1 OR x.Value1 IS NULL

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	x.Value1 <> 1 OR x.Value1 IS NULL

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

