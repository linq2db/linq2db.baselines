-- Firebird.2.5 Firebird

SELECT
	"g_2"."Key_1",
	Coalesce((
		SELECT
			LIST(CAST(Lower(UUID_TO_CHAR("t1"."GuidV")) AS VarChar(36) CHARACTER SET UNICODE_FSS), '')
		FROM
			(
				SELECT
					"e"."GuidV"
				FROM
					"ConcatGroupedTypedEntity" "e"
				WHERE
					"g_2"."Key_1" = "e"."GrpId"
				ORDER BY
					"e".PK
			) "t1"
	), '')
FROM
	(
		SELECT DISTINCT
			"g_1"."GrpId" as "Key_1"
		FROM
			"ConcatGroupedTypedEntity" "g_1"
	) "g_2"
ORDER BY
	"g_2"."Key_1"

-- Firebird.2.5 Firebird

SELECT
	"t1".PK,
	"t1"."GrpId",
	"t1"."GuidV",
	"t1"."IntV"
FROM
	"ConcatGroupedTypedEntity" "t1"

