﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ NO_INMEMORY_PRUNING(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

