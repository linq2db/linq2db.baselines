﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p,
	"Child" c_1
WHERE
	p."ParentID" = c_1."ParentID"

