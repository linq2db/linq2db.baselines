﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID as Value1,
	c_1.ParentID
FROM
	Child c_1
UNION ALL
SELECT
	toInt32(NULL) as Value1,
	c_2.ParentID as ParentID
FROM
	Parent c_2

