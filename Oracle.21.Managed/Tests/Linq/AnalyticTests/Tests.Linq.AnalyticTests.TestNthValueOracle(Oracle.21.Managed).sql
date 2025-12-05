-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NTH_VALUE(c_1."ChildID", 1) OVER(PARTITION BY p."Value1", c_1."ChildID"),
	NTH_VALUE(c_1."ChildID", CAST(p."ParentID" AS Number(19))) OVER(PARTITION BY p."Value1", c_1."ChildID"),
	NTH_VALUE(c_1."ChildID", 1) FROM FIRST OVER(PARTITION BY p."Value1", c_1."ChildID"),
	NTH_VALUE(c_1."ChildID", CAST(p."ParentID" AS Number(19))) FROM LAST IGNORE NULLS OVER(PARTITION BY p."Value1", c_1."ChildID"),
	NTH_VALUE(c_1."ChildID", CAST(p."ParentID" AS Number(19))) OVER(PARTITION BY p."Value1", c_1."ChildID"),
	NTH_VALUE(c_1."ChildID", 1) OVER(),
	NTH_VALUE(c_1."ChildID", 1) OVER(ORDER BY p."Value1"),
	NTH_VALUE(c_1."ChildID", 1) OVER(PARTITION BY c_1."ChildID" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

