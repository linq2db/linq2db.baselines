﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ PUSH_PRED(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

