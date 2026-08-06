-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	SUM(p."Value1") OVER (ORDER BY p."Value1" NULLS FIRST)
FROM
	"Parent" p

