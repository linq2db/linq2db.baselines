﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Child" cp
		INNER JOIN "Parent" c_1 ON cp."ParentID" = c_1."ParentID"

