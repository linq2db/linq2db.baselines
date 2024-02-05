BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.n,
	sumOrNull(t1.ParentID)
FROM
	(
		SELECT
			selectParam.ChildID + toInt32(1) as n,
			selectParam.ParentID as ParentID
		FROM
			Child selectParam
	) t1
GROUP BY
	t1.n

