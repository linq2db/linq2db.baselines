﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	w.ParentID,
	w.ChildID,
	w.GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID IS NOT NULL AND w.ChildID = toInt32(1)

