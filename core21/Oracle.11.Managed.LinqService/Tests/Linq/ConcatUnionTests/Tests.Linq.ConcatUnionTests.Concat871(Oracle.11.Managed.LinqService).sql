﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	c_1.Value1,
	NULL
FROM
	Parent c_1
UNION ALL
SELECT
	NULL,
	c_2.ParentID
FROM
	Child c_2

