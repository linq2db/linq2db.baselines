-- Firebird.4 Firebird4

SELECT
	"g_2"."Key_1",
	Coalesce((
		SELECT
			LIST(Coalesce("t1"."Value_1", ''), '')
		FROM
			(
				SELECT DISTINCT
					"e"."Value" as "Value_1"
				FROM
					"ConcatGroupedEntity" "e"
				WHERE
					"g_2"."Key_1" = "e"."GrpId" AND "e"."Value" IS NOT NULL
				ORDER BY
					"e"."Value"
			) "t1"
	), '')
FROM
	(
		SELECT DISTINCT
			"g_1"."GrpId" as "Key_1"
		FROM
			"ConcatGroupedEntity" "g_1"
	) "g_2"
ORDER BY
	"g_2"."Key_1"

-- Firebird.4 Firebird4

SELECT
	"t1".PK,
	"t1"."GrpId",
	"t1"."Value"
FROM
	"ConcatGroupedEntity" "t1"

