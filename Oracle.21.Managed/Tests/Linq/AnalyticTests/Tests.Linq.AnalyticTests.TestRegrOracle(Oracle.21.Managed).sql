-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	REGR_AVGX(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_AVGY(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_COUNT(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_INTERCEPT(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_R2(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_SXX(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_SXY(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_SYY(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID"),
	REGR_SLOPE(p."Value1", c_1."ChildID") OVER(PARTITION BY p."Value1", c_1."ChildID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

