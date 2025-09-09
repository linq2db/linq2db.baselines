BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ParentID + 1 as IntValue,
	p.ParentID as Id
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	toInt32(NULL) as IntValue,
	p_1.ParentID as Id
FROM
	Parent p_1
WHERE
	p_1.ParentID = 2

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

