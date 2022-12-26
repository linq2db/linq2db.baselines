BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.ChildID
FROM
	GrandChild selectParam
GROUP BY
	selectParam.ParentID + toInt32(1),
	selectParam.ChildID

