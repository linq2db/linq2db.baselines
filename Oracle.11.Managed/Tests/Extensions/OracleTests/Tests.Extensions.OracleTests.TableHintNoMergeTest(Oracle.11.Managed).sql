﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT /*+ NO_MERGE(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

