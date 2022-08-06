BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID + toInt32(1)
FROM
	Parent cp
		INNER JOIN Child _ ON cp.ParentID = _.ParentID + toInt32(1)

