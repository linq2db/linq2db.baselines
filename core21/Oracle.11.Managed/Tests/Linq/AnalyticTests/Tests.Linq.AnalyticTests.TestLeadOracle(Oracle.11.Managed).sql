﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	LEAD(p.Value1) OVER(PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1),
	LEAD(p.Value1) OVER(ORDER BY c_1.ChildID DESC, p.Value1),
	LEAD(p.Value1, 1, NULL) OVER(ORDER BY c_1.ChildID DESC, p.Value1),
	LEAD(p.Value1, 1, c_1.ChildID) OVER(ORDER BY c_1.ChildID DESC, p.Value1)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

