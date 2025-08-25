BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	STDDEV_SAMP(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	STDDEV_SAMP(p."Value1") OVER(ORDER BY p."Value1"),
	STDDEV_SAMP(p."Value1") OVER(),
	STDDEV_SAMP(p."Value1") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	STDDEV_SAMP(c_1."ParentID")
FROM
	"Parent" g_1
		INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
GROUP BY
	g_1."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	STDDEV_SAMP(t1."ParentID")
FROM
	"Child" t1

