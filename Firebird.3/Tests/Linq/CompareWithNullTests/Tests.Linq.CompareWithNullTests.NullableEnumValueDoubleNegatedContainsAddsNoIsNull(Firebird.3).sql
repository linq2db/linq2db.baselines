-- Firebird.3 Firebird3
SELECT
	"p"."Id",
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"EnumFilterEntity" "p"
WHERE
	"p"."MyEnum" IN (1)

