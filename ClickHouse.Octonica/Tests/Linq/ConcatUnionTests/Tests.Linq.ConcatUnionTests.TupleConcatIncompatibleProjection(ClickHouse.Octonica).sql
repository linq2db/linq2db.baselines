-- ClickHouse.Octonica ClickHouse

SELECT
	x.Value1 as Item2,
	x.ParentID as Item1
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION ALL
SELECT
	toInt32(NULL) as Item2,
	toInt32(NULL) as Item1
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

