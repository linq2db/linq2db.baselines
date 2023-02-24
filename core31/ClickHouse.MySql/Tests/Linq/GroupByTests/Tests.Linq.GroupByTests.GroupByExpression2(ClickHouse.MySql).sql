BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.ChildID,
	Avg(selectParam.ParentID)
FROM
	Child selectParam
GROUP BY
	selectParam.ChildID

