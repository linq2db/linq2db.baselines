BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."BoolValue"
FROM
	"WhereWithBool" "t",
	"WhereWithBool" "x"
WHERE
	"x"."BoolValue" AND "x"."Id" = 1

