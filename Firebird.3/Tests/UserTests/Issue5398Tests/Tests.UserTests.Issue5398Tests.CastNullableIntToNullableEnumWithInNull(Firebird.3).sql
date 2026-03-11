-- Firebird.3 Firebird3

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	("i"."Value" IN (1) OR "i"."Value" IS NULL)
ORDER BY
	"i"."Id"

