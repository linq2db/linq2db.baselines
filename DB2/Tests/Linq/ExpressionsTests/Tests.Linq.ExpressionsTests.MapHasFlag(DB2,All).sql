-- DB2 DB2.LUW DB2LUW
DECLARE @flag Integer(4) -- Int32
SET     @flag = 7

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Flags"
FROM
	"MappingTestClass" "t"
WHERE
	BitAnd("t"."Flags", @flag) = @flag

