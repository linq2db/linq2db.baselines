BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	(o.ParentID IN (toInt32(1), toInt32(2), toInt32(3)) OR o.ParentID = toInt32(4))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	((o.ParentID IN (toInt32(1), toInt32(2), toInt32(3)) OR o.ParentID IS NULL) OR o.ParentID = toInt32(4))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	(o.ParentID IN (toInt32(4), toInt32(5), toInt32(6)) OR o.ParentID = toInt32(4))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	((o.ParentID IN (toInt32(4), toInt32(5), toInt32(6)) OR o.ParentID IS NULL) OR o.ParentID = toInt32(4))

