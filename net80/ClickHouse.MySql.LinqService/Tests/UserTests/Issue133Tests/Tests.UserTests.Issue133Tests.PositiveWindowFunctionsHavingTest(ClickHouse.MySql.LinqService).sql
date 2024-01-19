BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*),
	SUM(Count(*)) OVER(),
	sumOrNull(_.ParentID)
FROM
	Child _
GROUP BY
	_.ParentID
HAVING
	(sumOrNull(_.ParentID) <> toInt32(36) OR sumOrNull(_.ParentID) IS NULL)

