﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ ALL_ROWS */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

