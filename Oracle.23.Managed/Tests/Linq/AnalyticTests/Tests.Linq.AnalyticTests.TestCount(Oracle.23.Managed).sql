-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*),
	COUNT(c_1."ChildID"),
	COUNT(c_1."ChildID"),
	COUNT(ALL c_1."ChildID"),
	COUNT(DISTINCT c_1."ChildID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" t1

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(t1."ParentID")
FROM
	"Child" t1

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(ALL t1."ParentID")
FROM
	"Child" t1

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(DISTINCT t1."ParentID")
FROM
	"Child" t1

