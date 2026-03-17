-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (1, 2, 3) OR o.ParentID = 4

-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	(o.ParentID IN (1, 2, 3) OR o.ParentID IS NULL) OR
	o.ParentID = 4

-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (4, 5, 6) OR o.ParentID = 4

-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	(o.ParentID IN (4, 5, 6) OR o.ParentID IS NULL) OR
	o.ParentID = 4

