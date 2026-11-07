-- SapHana.Native SapHana
SELECT
	"t1"."RowNumber_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD("e"."RowNumber", 2) ORDER BY "e"."RowNumber") as "RowNumber",
			"e"."RowNumber" as "RowNumber_1",
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					MOD("g_1"."ParentID", 3) as "RowNumber"
				FROM
					"Parent" "g_1"
			) "e"
		GROUP BY
			"e"."RowNumber"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_1"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

