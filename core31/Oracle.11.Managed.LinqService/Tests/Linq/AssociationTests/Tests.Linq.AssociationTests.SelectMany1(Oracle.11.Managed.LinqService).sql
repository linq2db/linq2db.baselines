﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	cp."ParentID",
	cp."Value1"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON cp."ParentID" = c_1."ParentID"

