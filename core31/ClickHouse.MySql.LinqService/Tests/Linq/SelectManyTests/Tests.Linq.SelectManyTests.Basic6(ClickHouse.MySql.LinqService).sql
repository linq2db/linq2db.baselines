BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ParentID + toInt32(1)
FROM
	Parent cp
		INNER JOIN Child _ ON _.ParentID > toInt32(0) AND cp.ParentID = _.ParentID

