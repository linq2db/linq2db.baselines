﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT /*+ PQ_FILTER(NONE) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

