﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ NOAPPEND */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

