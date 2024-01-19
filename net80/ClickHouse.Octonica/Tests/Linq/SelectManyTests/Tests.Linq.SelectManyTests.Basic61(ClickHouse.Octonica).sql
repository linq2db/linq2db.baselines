BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID + toInt32(1)
FROM
	Parent cp
		INNER JOIN Child _ ON (_.ParentID > toInt32(0) OR _.ParentID > toInt32(1)) AND cp.ParentID = _.ParentID
WHERE
	(_.ParentID > toInt32(-1) OR _.ParentID > toInt32(2))

