-- Oracle.11.Managed Oracle11

SELECT
	MEDIAN(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	MEDIAN(p."Value1") OVER()
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

-- Oracle.11.Managed Oracle11

SELECT
	MEDIAN(c_1."ParentID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

-- Oracle.11.Managed Oracle11

SELECT
	MEDIAN(t1."ParentID")
FROM
	"Child" t1

