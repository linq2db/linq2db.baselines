﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ HASH(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

