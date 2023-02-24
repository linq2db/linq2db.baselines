BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY p."Value1") OVER(PARTITION BY p."Value1", p."ParentID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY p."Value1" DESC),
	PERCENTILE_CONT(1) WITHIN GROUP (ORDER BY p."Value1" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

