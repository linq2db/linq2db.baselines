﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	VAR_POP(p.Value1) OVER(PARTITION BY p.Value1, c_1.ChildID),
	VAR_POP(p.Value1) OVER(ORDER BY p.Value1),
	VAR_POP(p.Value1) OVER(),
	VAR_POP(p.Value1) OVER(PARTITION BY c_1.ChildID ORDER BY p.Value1 RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	VAR_POP(c_1.ParentID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
GROUP BY
	p.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	VAR_POP(t1.ParentID)
FROM
	Child t1

