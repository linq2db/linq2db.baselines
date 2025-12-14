-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	VARIANCE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	VARIANCE(ALL p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	VARIANCE(DISTINCT p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	VARIANCE(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	VARIANCE(p."Value1") OVER(),
	VARIANCE(ALL p."Value1") OVER(),
	VARIANCE(DISTINCT p."Value1") OVER(),
	VARIANCE(p."Value1") OVER(),
	VARIANCE(ALL p."Value1") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	VARIANCE(c_1."ChildID"),
	VARIANCE(c_1."ChildID"),
	VARIANCE(ALL c_1."ChildID"),
	VARIANCE(DISTINCT c_1."ChildID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	VARIANCE(t1."ParentID")
FROM
	"Child" t1

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	VARIANCE(ALL t1."ParentID")
FROM
	"Child" t1

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	VARIANCE(DISTINCT t1."ParentID")
FROM
	"Child" t1

