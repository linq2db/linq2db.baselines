﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ NO_USE_CUBE(c_1 p) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

