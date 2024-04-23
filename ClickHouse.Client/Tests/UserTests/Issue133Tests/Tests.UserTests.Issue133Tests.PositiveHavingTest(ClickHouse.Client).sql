﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	sumOrNull(_.ParentID)
FROM
	Child _
GROUP BY
	_.ParentID
HAVING
	(sumOrNull(_.ParentID) <> 36 OR sumOrNull(_.ParentID) IS NULL)

