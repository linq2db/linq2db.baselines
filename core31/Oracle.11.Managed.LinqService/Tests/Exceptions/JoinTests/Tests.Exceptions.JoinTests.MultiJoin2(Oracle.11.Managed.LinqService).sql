﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Child" c_1
		INNER JOIN "Parent" p1 ON c_1."ParentID" = p1."ParentID"

