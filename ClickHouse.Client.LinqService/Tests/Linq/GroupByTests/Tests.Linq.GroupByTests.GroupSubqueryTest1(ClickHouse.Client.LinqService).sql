﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	pmp1.ChildID
FROM
	(
		SELECT
			g_1.ParentID as ParentID
		FROM
			Child g_1
		GROUP BY
			g_1.ParentID
	) pmp
		CROSS JOIN Child pmp1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

