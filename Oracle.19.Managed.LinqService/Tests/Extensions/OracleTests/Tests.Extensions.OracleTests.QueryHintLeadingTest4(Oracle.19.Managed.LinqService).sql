﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ LEADING(c_1 p) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

