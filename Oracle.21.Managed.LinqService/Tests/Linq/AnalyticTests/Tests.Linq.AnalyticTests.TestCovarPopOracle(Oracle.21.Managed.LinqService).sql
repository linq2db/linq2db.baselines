﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COVAR_POP(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	COVAR_POP(p."Value1", c_1."ChildID") OVER(),
	COVAR_POP(p."Value1", c_1."ChildID") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COVAR_POP(c_1."ParentID", c_1."ChildID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
GROUP BY
	p."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COVAR_POP(t1."ParentID", t1."ChildID")
FROM
	"Child" t1

