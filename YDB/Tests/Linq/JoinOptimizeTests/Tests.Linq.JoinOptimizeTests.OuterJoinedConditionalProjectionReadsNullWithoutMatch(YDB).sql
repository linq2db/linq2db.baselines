-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	CASE
		WHEN x.ParentID IS NULL THEN NULL
		WHEN x.Value1 IS NULL THEN 'none'u
		ELSE NULL
	END as X
FROM
	Parent p
		LEFT JOIN Parent x ON x.ParentID = p.ParentID + 1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	CASE
		WHEN x.ParentID IS NULL THEN NULL
		WHEN x.Value1 IS NULL THEN 'none'u
		ELSE NULL
	END as X
FROM
	Parent p
		LEFT JOIN (
			SELECT
				q.Value1 as Value1,
				q.ParentID as ParentID
			FROM
				Parent q
		) x ON x.ParentID = p.ParentID + 1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

