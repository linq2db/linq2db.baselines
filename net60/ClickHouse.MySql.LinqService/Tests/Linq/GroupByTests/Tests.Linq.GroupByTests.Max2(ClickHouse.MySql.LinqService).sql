﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(p.ParentID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
WHERE
	c_1.ChildID > toInt32(20)

