﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ INDEX(p parent_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

