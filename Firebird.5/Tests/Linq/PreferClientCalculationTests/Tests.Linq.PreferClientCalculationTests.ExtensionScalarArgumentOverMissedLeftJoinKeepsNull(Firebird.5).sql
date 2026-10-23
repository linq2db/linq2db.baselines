-- Firebird.5 Firebird4
SELECT
	"j"."Value1" + 1
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

