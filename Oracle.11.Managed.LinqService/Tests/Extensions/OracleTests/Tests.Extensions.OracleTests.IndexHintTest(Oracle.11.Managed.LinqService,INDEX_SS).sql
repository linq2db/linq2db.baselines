﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ INDEX_SS(p parent_ix parent2_ix) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

