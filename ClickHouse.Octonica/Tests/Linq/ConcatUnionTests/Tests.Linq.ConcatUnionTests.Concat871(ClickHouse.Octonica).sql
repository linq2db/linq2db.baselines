﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.Value1,
	toInt32(NULL) as c1
FROM
	Parent c_1
UNION ALL
SELECT
	toInt32(NULL) as Value1,
	c_2.ParentID as c1
FROM
	Child c_2

