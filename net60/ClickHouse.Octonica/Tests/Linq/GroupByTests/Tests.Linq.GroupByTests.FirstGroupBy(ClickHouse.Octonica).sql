BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(4)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(6)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(7)

