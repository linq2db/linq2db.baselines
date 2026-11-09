-- Firebird.4 Firebird4
SELECT
	"t1"."Key_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod("e"."Key_1", 2) ORDER BY "e"."Key_1") as "RowNumber",
			"e"."Key_1",
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					Mod("g_1"."ParentID", 3) as "Key_1"
				FROM
					"Parent" "g_1"
			) "e"
		GROUP BY
			"e"."Key_1"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Key_1"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

