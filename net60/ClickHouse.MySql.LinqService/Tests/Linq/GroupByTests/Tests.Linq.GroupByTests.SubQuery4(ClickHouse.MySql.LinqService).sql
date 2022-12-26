BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.ChildID + toInt32(1),
	sumOrNull(selectParam.ParentID)
FROM
	Child selectParam
GROUP BY
	selectParam.ChildID + toInt32(1)

