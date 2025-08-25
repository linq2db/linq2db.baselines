BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	STDDEV(c_1."ChildID"),
	STDDEV(c_1."ChildID"),
	STDDEV(ALL c_1."ChildID"),
	STDDEV(DISTINCT c_1."ChildID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	STDDEV(t1."ParentID")
FROM
	"Child" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	STDDEV(ALL t1."ParentID")
FROM
	"Child" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	STDDEV(DISTINCT t1."ParentID")
FROM
	"Child" t1

