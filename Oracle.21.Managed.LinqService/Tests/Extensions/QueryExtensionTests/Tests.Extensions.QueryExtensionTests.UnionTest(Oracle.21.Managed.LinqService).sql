﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT /*+ PARALLEL(2) */
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
UNION
SELECT
	t_1."ParentID",
	t_1."ChildID"
FROM
	"Child" t_1
WHERE
	t_1."ChildID" < 10

