﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ NO_FACT(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

