﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		LEFT JOIN Child c_1 ON p.ParentID = c_1.ParentID
WHERE
	p.ParentID >= toInt32(4)

