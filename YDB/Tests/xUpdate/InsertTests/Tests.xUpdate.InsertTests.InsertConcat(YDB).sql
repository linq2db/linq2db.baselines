-- YDB Ydb
DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- YDB Ydb
INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	p.ParentID + 1000 as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	p_1.ParentID + 1000 as ParentID,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID = 2

-- YDB Ydb
SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID > 1000
ORDER BY
	p.ParentID

-- YDB Ydb
DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

