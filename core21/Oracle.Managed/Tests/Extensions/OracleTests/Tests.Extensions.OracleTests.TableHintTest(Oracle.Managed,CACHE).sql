﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ CACHE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

