﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ INMEMORY_PRUNING(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

