﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	w.ParentID,
	w.ChildID,
	w.GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID = 1

