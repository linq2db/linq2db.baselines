-- Firebird.5 Firebird4

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	"i"."Value" IN (1, 3)
ORDER BY
	"i"."Id"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestEnumTable" "t1"

