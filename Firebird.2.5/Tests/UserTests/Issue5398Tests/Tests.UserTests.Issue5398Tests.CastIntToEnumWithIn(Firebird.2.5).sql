-- Firebird.2.5 Firebird

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	"i"."Value" IN (1, 3)
ORDER BY
	"i"."Id"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestEnumTable" "t1"

