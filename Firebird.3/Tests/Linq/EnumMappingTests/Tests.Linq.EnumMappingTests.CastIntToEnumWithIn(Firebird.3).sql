-- Firebird.3 Firebird3
SELECT
	"i"."Id"
FROM
	"InEnumTable" "i"
WHERE
	"i"."Value" IN (1, 3)
ORDER BY
	"i"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"InEnumTable" "t1"

