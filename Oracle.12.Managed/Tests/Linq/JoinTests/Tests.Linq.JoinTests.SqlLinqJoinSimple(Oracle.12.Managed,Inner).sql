﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

