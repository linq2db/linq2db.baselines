﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Max(c_1."ChildID"),
	MAX(c_1."ChildID"),
	MAX(ALL c_1."ChildID"),
	MAX(DISTINCT c_1."ChildID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
GROUP BY
	p."ParentID"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Max(c_1."ParentID")
FROM
	"Child" c_1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MAX(ALL t1."ParentID")
FROM
	"Child" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MAX(DISTINCT t1."ParentID")
FROM
	"Child" t1

