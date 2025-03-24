﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID as ID1,
	c_1.ParentID as ID1_1,
	Coalesce(c_1.Value1, 0) as ID3
FROM
	Parent c_1
UNION ALL
SELECT
	c_2.ParentID as ID1,
	c_2.ChildID as ID1_1,
	c_2.ParentID + 1 as ID3
FROM
	Child c_2

