﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(p) LEADING(p c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p,
	"Child" c_1

