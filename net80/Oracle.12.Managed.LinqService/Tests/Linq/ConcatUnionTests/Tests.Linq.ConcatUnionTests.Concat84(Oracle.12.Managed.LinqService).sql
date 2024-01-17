﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."ParentID" + 1
FROM
	"Child" c_1
UNION ALL
SELECT
	c_2."ParentID",
	c_2."ParentID",
	Nvl(c_2."Value1", 0)
FROM
	"Parent" c_2

