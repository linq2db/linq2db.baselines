-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	p_1.ParentID as ParentID,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID = 2

