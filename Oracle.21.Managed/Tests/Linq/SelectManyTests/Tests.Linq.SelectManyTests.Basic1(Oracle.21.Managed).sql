﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" t1

