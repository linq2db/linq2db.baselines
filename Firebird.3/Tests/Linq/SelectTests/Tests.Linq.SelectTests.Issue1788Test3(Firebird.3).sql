-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

-- Firebird.3 Firebird3

SELECT
	"l"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN "Table1788" "l" ON "l"."Id" = "p"."Id" + 1

