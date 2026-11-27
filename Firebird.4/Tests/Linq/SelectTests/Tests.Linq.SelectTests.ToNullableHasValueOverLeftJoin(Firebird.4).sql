-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"NullableLeftJoinTable" "t1"

-- Firebird.4 Firebird4
SELECT
	"l"."Value1"
FROM
	"NullableLeftJoinTable" "p"
		LEFT JOIN "NullableLeftJoinTable" "l" ON "l"."Id" = "p"."Id" + 1

