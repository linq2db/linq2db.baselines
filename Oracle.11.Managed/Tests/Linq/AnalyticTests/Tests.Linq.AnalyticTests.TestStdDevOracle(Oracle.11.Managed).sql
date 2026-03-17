-- Oracle.11.Managed Oracle11

SELECT
	STDDEV(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	STDDEV(ALL p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	STDDEV(DISTINCT p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	STDDEV(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	STDDEV(p."Value1") OVER(),
	STDDEV(ALL p."Value1") OVER(),
	STDDEV(DISTINCT p."Value1") OVER(),
	STDDEV(p."Value1") OVER(),
	STDDEV(ALL p."Value1") OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

