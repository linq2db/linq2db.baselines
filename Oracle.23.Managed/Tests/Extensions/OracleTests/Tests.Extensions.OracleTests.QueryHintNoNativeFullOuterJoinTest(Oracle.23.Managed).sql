﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ NO_NATIVE_FULL_OUTER_JOIN */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

