BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CORR(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	CORR(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	CORR(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	CORR(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	CORR(p."Value1", c_1."ChildID") OVER(),
	CORR(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	CORR(p."Value1", c_1."ChildID") OVER(ORDER BY p."Value1")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CORR(c_1."ParentID", c_1."ChildID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CORR(t1."ParentID", t1."ChildID")
FROM
	"Child" t1

