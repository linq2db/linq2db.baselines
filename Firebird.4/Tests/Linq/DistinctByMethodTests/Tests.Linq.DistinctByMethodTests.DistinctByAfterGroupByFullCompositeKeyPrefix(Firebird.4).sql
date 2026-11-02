-- Firebird.4 Firebird4
SELECT
	"t1"."Parity",
	"t1"."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Parity" ORDER BY "e"."Parity", "e"."RowNumber") as "RowNumber",
			"e"."Parity",
			"e"."RowNumber" as "RowNumber_1"
		FROM
			(
				SELECT DISTINCT
					Mod("g_1"."ParentID", 2) as "Parity",
					"g_1"."Value1" as "RowNumber"
				FROM
					"Parent" "g_1"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Parity",
	"t1"."RowNumber_1"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

