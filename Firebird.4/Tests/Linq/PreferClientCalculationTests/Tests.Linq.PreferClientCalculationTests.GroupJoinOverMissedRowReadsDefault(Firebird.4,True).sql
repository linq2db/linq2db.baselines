-- Firebird.4 Firebird4
SELECT
	"e"."Id",
	Coalesce("j"."Value1", 0),
	"j"."Value1"
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "e"."Id" + 1000 = "j"."Id"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date",
	"t1"."Key",
	"t1"."Name"
FROM
	"TranslatedMemberEntity" "t1"

