-- Firebird.3 Firebird3

SELECT
	(CAST("g_2"."CountPercents" AS DOUBLE PRECISION) * 100) / SUM("g_2"."CountPercents") OVER (),
	"g_2"."Sum_1"
FROM
	(
		SELECT
			COUNT(*) as "CountPercents",
			SUM("g_1"."ParentID") as "Sum_1"
		FROM
			"Child" "g_1"
		GROUP BY
			"g_1"."ParentID"
		HAVING
			SUM("g_1"."ParentID") <> 36
	) "g_2"

