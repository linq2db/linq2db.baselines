﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ FULL(t) HASH(t) PARALLEL(2) */
	t."ParentID",
	t."ChildID"
FROM
	"Child" t

