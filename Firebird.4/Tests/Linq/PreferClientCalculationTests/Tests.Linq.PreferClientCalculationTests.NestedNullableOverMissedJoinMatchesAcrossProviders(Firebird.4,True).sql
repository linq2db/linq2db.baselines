-- Firebird.4 Firebird4
SELECT
	"e"."Id",
	Abs("j"."Value1")
FROM
	"ClientCalcEntity" "e"
		LEFT JOIN "ClientCalcEntity" "j" ON "j"."Id" = "e"."Id" + 1000

