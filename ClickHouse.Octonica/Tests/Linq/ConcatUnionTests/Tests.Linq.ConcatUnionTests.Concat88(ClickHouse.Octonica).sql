﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
UNION ALL
SELECT
	c_2.ParentID,
	c_2.Value1
FROM
	Parent c_2

