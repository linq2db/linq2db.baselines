-- Firebird.3 Firebird3

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	"i"."Value" IN (1, 3)
ORDER BY
	"i"."Id"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestEnumTable" "t1"

