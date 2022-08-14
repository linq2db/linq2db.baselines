BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1)
UNION ALL
SELECT
	p_1.ParentID,
	p_1.Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID = toInt32(2)

