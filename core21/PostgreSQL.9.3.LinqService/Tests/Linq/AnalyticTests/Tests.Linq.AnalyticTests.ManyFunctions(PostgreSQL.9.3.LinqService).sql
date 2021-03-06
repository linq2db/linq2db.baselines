﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	RANK() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY c_1."ParentID", c_1."ChildID", p."Value1"),
	ROW_NUMBER() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY c_1."ParentID" DESC, c_1."ChildID" DESC, p."Value1" DESC),
	DENSE_RANK() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	SUM(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	AVG(p."Value1") OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	COUNT(*) OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY c_1."ChildID", p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY c_1."ChildID" DESC, p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" ROWS BETWEEN UNBOUNDED PRECEDING AND 3 PRECEDING),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE UNBOUNDED PRECEDING),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE CURRENT ROW),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" ROWS 1 PRECEDING),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" DESC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(*) OVER(),
	COUNT(*) OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY c_1."ChildID", p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY c_1."ChildID" DESC, p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" ROWS BETWEEN UNBOUNDED PRECEDING AND 3 PRECEDING),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE UNBOUNDED PRECEDING),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE CURRENT ROW),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" ROWS 1 PRECEDING),
	COUNT(p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" DESC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(*) OVER(),
	RANK() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY c_1."ChildID", p."Value1"),
	COUNT(ALL p."ParentID") OVER(PARTITION BY p."Value1" ORDER BY p."Value1" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

