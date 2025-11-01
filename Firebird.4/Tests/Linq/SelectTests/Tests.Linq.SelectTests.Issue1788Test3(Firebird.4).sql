-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

-- Firebird.4 Firebird4

SELECT
	"l"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN "Table1788" "l" ON "l"."Id" = "p"."Id" + 1

