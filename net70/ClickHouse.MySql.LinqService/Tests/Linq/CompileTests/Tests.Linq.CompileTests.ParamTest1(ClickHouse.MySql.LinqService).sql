﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = toInt32(2)

