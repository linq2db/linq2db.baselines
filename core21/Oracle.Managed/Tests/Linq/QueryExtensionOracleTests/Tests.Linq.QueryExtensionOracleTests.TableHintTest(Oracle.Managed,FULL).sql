﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ FULL(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

