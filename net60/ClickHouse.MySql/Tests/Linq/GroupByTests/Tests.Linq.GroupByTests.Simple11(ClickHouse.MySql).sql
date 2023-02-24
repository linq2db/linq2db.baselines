BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Key_1
FROM
	(
		SELECT
			selectParam.ParentID + toInt32(1) as ParentID,
			selectParam.ChildID as Key_1
		FROM
			GrandChild selectParam
	) t1
GROUP BY
	t1.ParentID,
	t1.Key_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	elemParam.ChildID
FROM
	GrandChild elemParam
WHERE
	elemParam.ParentID + toInt32(1) = toInt32(2) AND elemParam.ChildID = toInt32(11)

