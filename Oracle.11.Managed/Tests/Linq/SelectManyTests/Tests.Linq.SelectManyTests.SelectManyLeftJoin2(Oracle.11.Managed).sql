﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

