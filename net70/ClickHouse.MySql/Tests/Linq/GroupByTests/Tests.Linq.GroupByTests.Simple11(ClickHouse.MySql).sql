BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.ParentID + toInt32(1),
	selectParam.ChildID
FROM
	GrandChild selectParam
GROUP BY
	selectParam.ParentID + toInt32(1),
	selectParam.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	elemParam.ChildID
FROM
	GrandChild elemParam
WHERE
	elemParam.ParentID + toInt32(1) = toInt32(2) AND elemParam.ChildID = toInt32(11)

