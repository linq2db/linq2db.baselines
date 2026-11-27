-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"NullableLeftJoinTable" "t1"

-- Firebird.2.5 Firebird
SELECT
	"l"."Value1"
FROM
	"NullableLeftJoinTable" "p"
		LEFT JOIN "NullableLeftJoinTable" "l" ON "l"."Id" = "p"."Id" + 1

