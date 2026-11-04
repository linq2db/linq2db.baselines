-- Firebird.4 Firebird4
SELECT
	"t1"."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod("e"."RowNumber", 2) ORDER BY "e"."RowNumber" DESC) as "RowNumber",
			"e"."RowNumber" as "RowNumber_1"
		FROM
			(
				SELECT DISTINCT
					Mod("g_1"."ParentID", 3) as "RowNumber"
				FROM
					"Parent" "g_1"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_1" DESC

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

