BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID + cp.ParentID
FROM
	Parent cp
		CROSS JOIN Child _
WHERE
	_.ParentID + cp.ParentID > toInt32(1) AND cp.ParentID = _.ParentID

