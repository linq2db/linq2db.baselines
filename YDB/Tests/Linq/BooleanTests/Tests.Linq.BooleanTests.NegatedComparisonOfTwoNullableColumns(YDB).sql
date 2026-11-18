-- YDB Ydb
SELECT
	x.ParentID as ParentID,
	q.ParentID as B_1
FROM
	Parent x
		CROSS JOIN Parent q
WHERE
	x.Value1 <> q.Value1 OR x.Value1 IS NULL AND q.Value1 IS NOT NULL OR
	x.Value1 IS NOT NULL AND q.Value1 IS NULL

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	x.ParentID as ParentID,
	q.ParentID as B_1
FROM
	Parent x
		CROSS JOIN Parent q
WHERE
	x.Value1 <> q.Value1 OR x.Value1 IS NULL AND q.Value1 IS NOT NULL OR
	x.Value1 IS NOT NULL AND q.Value1 IS NULL

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

