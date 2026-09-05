-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(0) as projection__set_id__,
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 3
UNION ALL
SELECT
	toInt32(1) as projection__set_id__,
	p_1.ParentID as ParentID,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID <= 3

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

