﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	r."ChildID"
FROM
	"Parent" p
		FULL JOIN "Child" r ON p."ParentID" = r."ParentID"

