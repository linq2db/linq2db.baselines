﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		INNER JOIN Child ch ON p.ParentID = ch.ParentID
		INNER JOIN GrandChild gc ON ch.ChildID = gc.ChildID
WHERE
	ch.ChildID = toInt32(11) AND gc.GrandChildID = toInt32(111)

