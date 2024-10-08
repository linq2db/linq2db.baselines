﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value1,
	t1.Value1_1 as ParentID
FROM
	(
		SELECT
			c_1.ParentID as Value1,
			c_1.ParentID as Value1_1
		FROM
			Child c_1
		UNION DISTINCT
		SELECT
			toInt32(NULL) as Value1,
			c_2.ParentID as Value1_1
		FROM
			Parent c_2
	) t1
UNION ALL
SELECT
	c_3.ParentID as Value1,
	c_3.ParentID as ParentID
FROM
	Child c_3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

