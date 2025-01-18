BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."BoolValue"
FROM
	"WhereWithBool" "t",
	"WhereWithBool" "x"
WHERE
	"x"."BoolValue" AND "x"."Id" = 1

