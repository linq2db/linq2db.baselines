-- Firebird.4 Firebird4

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	"i"."Value" IN (1, 2)
ORDER BY
	"i"."Id"

