﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ PARALLEL_INDEX(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

