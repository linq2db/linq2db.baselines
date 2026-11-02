-- Firebird.5 Firebird4
SELECT
	"t1"."Key_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod("e"."Key_1", 2) ORDER BY "e"."RowNumber", "e"."Key_1" DESC) as "RowNumber",
			"e"."RowNumber" as "RowNumber_1",
			"e"."Key_1",
			"e"."Count_1",
			"e"."c1"
		FROM
			(
				SELECT
					"g_1"."ParentID" as "Key_1",
					CASE
						WHEN "g_1"."ParentID" = 1 THEN 0
						ELSE 1
					END as "RowNumber",
					COUNT(*) as "Count_1",
					CASE
						WHEN "g_1"."ParentID" = 1 THEN 0
						ELSE 1
					END as "c1"
				FROM
					"Parent" "g_1"
				GROUP BY
					"g_1"."ParentID"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_1",
	"t1"."Key_1" DESC,
	"t1"."c1"

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

