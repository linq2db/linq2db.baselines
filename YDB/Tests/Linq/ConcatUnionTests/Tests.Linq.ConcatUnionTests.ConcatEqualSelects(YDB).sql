-- YDB Ydb

SELECT
	p.ParentID + 1 as IntValue,
	p.ParentID as Id
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	CAST(NULL AS Int32) as IntValue,
	p_1.ParentID as Id
FROM
	Parent p_1
WHERE
	p_1.ParentID = 2

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

