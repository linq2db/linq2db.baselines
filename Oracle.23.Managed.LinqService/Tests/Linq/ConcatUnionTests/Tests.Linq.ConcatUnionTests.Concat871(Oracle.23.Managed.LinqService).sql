﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	c_1."Value1",
	NULL
FROM
	"Parent" c_1
UNION ALL
SELECT
	NULL,
	c_2."ParentID"
FROM
	"Child" c_2

