﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ FRESH_MV */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

