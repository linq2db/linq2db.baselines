-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"NullableLeftJoinTable" "t1"

-- Firebird.3 Firebird3
SELECT
	"l"."Value1"
FROM
	"NullableLeftJoinTable" "p"
		LEFT JOIN "NullableLeftJoinTable" "l" ON "l"."Id" = "p"."Id" + 1

