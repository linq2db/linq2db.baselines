﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ DYNAMIC_SAMPLING(p 1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

