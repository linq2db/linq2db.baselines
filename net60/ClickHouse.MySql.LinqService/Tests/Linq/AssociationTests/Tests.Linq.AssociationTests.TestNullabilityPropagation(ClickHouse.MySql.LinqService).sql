﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
		LEFT JOIN Child a_Middle ON t.ParentID = a_Middle.ParentID
WHERE
	(a_Middle.ParentID <> toInt32(4) OR a_Middle.ParentID IS NULL)

