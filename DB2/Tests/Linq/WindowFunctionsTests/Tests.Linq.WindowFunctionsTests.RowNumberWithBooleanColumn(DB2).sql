-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id",
	ROW_NUMBER() OVER (ORDER BY "x"."BoolValue", "x"."Id"),
	ROW_NUMBER() OVER (ORDER BY Mod("x"."IntValue", 20) = 0, "x"."Id"),
	ROW_NUMBER() OVER (PARTITION BY "x"."BoolValue" ORDER BY "x"."Id"),
	ROW_NUMBER() OVER (PARTITION BY Mod("x"."IntValue", 20) = 0 ORDER BY "x"."Id"),
	ROW_NUMBER() OVER (PARTITION BY "x"."NullableBoolValue" ORDER BY "x"."Id")
FROM
	"WindowFunctionTestEntity" "x"
ORDER BY
	"x"."Id"

