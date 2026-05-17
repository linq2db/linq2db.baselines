-- SapHana.Odbc SapHanaOdbc

SELECT
	"t3"."Key_1",
	Coalesce("t2"."Value_1", '')
FROM
	(
		SELECT DISTINCT
			"g_1"."GrpId" as "Key_1"
		FROM
			"ConcatGroupedEntity" "g_1"
	) "t3"
		LEFT JOIN LATERAL (
			SELECT
				STRING_AGG(Coalesce("t1"."Value_1", ''), '') as "Value_1"
			FROM
				(
					SELECT
						"x"."Value" as "Value_1"
					FROM
						"ConcatGroupedEntity" "x"
					WHERE
						"t3"."Key_1" = "x"."GrpId"
					ORDER BY
						"x"."PK"
					LIMIT 2
				) "t1"
		) "t2" ON 1=1
ORDER BY
	"t3"."Key_1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."PK",
	"t1"."GrpId",
	"t1"."Value"
FROM
	"ConcatGroupedEntity" "t1"

