﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
ORDER BY
	ch.ChildID % 2 DESC

