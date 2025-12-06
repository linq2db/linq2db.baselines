-- Oracle.11.Managed Oracle11

SELECT
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY p."Value1") OVER(PARTITION BY p."Value1", p."ParentID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

-- Oracle.11.Managed Oracle11

SELECT
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY p."Value1" DESC),
	PERCENTILE_DISC(1) WITHIN GROUP (ORDER BY p."Value1" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

