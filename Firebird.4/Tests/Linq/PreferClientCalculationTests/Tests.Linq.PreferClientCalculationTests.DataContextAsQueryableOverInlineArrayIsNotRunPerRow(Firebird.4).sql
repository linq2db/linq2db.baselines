-- Firebird.4 Firebird4
SELECT
	"e"."Id",
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "j"."Value1" AS "item" FROM rdb$database
				UNION ALL
				SELECT 5 FROM rdb$database) "t1"
		WHERE
			0 = "t1"."item"
	)
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

