﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ INMEMORY_PRUNING(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

