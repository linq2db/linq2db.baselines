-- Firebird.2.5 Firebird
SELECT
	"e"."Id",
	"j"."Id",
	"j"."Value1"
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date",
	"t1"."Flag",
	"t1"."Name"
FROM
	"MissedJoinEntity" "t1"

-- Firebird.2.5 Firebird
SELECT
	"j"."Id",
	"j"."Value1",
	"j"."Date",
	"j"."Flag",
	"j"."Name"
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

