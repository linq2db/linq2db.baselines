﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	r."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" r ON p."ParentID" = r."ParentID"

