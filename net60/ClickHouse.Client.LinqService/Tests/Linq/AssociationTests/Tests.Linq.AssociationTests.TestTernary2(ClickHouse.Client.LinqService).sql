﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Bottom.ParentID,
	a_Bottom.ChildID,
	a_Bottom.GrandChildID
FROM
	Parent t
		LEFT JOIN Child a_Middle ON t.ParentID = a_Middle.ParentID
		LEFT JOIN GrandChild a_Bottom ON a_Middle.ChildID = a_Bottom.ChildID
WHERE
	t.ParentID IN (toInt32(1), toInt32(5))
ORDER BY
	t.ParentID

