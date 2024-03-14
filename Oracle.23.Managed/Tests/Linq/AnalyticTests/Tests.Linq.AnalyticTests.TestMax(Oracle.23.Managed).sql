﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max(c_1."ChildID"),
	MAX(c_1."ChildID"),
	MAX(ALL c_1."ChildID"),
	MAX(DISTINCT c_1."ChildID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max(t1."ParentID")
FROM
	"Child" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	MAX(ALL t1."ParentID")
FROM
	"Child" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	MAX(DISTINCT t1."ParentID")
FROM
	"Child" t1

