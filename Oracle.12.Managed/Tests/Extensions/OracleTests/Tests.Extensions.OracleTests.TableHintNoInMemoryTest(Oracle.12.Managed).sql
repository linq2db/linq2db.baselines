﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ NO_INMEMORY(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

