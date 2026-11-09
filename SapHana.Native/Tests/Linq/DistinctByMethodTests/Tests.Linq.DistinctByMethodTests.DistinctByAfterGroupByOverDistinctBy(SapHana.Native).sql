-- SapHana.Native SapHana
SELECT
	"t1"."Key_1",
	"t1"."Max_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD("e_2"."Key_1", 2) ORDER BY "e_2"."Key_1" DESC) as "RowNumber",
			"e_2"."Key_1",
			MAX("e_2"."ParentID") as "Max_1"
		FROM
			(
				SELECT
					Coalesce("g_1"."Value1", 0) as "Key_1",
					"g_1"."ParentID"
				FROM
					(
						SELECT
							ROW_NUMBER() OVER (PARTITION BY "e_1"."c1" ORDER BY "e_1"."c1" DESC, "e_1"."ParentID" DESC) as "RowNumber",
							"e_1"."ParentID",
							"e_1"."Value1"
						FROM
							(
								SELECT
									Coalesce("e"."Value1", 0) as "c1",
									"e"."ParentID",
									"e"."Value1"
								FROM
									"Parent" "e"
							) "e_1"
					) "g_1"
				WHERE
					"g_1"."RowNumber" = 1
			) "e_2"
		GROUP BY
			"e_2"."Key_1"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Key_1" DESC

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

