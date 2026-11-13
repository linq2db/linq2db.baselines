-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Key_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."c1" ORDER BY "e"."c2" DESC, "e"."Key_1") as "RowNumber",
			"e"."c2",
			"e"."Key_1",
			"e"."Count_1"
		FROM
			(
				SELECT
					Mod("g_1"."ParentID", 2) as "c1",
					CAST("g_1"."ParentID" > 2 AS smallint) as "c2",
					"g_1"."ParentID" as "Key_1",
					COUNT(*) as "Count_1"
				FROM
					"Parent" "g_1"
				GROUP BY
					"g_1"."ParentID"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."c2" DESC,
	"t1"."Key_1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

