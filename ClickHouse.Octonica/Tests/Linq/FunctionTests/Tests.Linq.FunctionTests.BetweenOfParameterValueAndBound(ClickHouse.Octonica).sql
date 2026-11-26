-- ClickHouse.Octonica ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	3 BETWEEN 0 AND p.ParentID

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Octonica ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	3 NOT BETWEEN 0 AND p.ParentID

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

