-- YDB Ydb
SELECT
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	x.Value1 <> 1 OR x.Value1 IS NULL

-- YDB Ydb
SELECT
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	NOT (x.Value1 = 1 AND x.Value1 IS NOT NULL)

-- YDB Ydb
SELECT
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	NOT (x.Value1 = 1 AND x.Value1 IS NOT NULL)

