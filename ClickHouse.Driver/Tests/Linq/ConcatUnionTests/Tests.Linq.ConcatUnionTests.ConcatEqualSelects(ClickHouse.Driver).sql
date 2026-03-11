-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

