﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ PARALLEL_INDEX(p, index1, DEFAULT) */
	p."ParentID",
	p."Value1"
FROM
	"Child" t1
		CROSS JOIN "Parent" p
WHERE
	t1."ParentID" = p."ParentID"

