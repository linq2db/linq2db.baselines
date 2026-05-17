-- Firebird.3 Firebird3

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	"i"."Value" IN (1, 2)
ORDER BY
	"i"."Id"

