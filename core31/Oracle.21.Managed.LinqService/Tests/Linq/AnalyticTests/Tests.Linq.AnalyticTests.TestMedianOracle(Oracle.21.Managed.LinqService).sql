﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MEDIAN(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MEDIAN(p."Value1") OVER()
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MEDIAN(c_1."ParentID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
GROUP BY
	p."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MEDIAN(t1."ParentID")
FROM
	"Child" t1

