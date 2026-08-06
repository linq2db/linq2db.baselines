-- Oracle.11.Managed Oracle11
SELECT
	SUM(p."Value1") OVER (ORDER BY p."Value1" NULLS FIRST)
FROM
	"Parent" p

