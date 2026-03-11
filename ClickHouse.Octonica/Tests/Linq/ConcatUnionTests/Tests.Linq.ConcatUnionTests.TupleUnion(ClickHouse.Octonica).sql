-- ClickHouse.Octonica ClickHouse

SELECT
	p1.ParentID as Item1,
	p1.Value1 as Item2
FROM
	Parent p1
WHERE
	p1.ParentID > 3
UNION DISTINCT
SELECT
	p2.ParentID as Item1,
	p2.Value1 as Item2
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

