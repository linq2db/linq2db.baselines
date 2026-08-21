-- DB2 DB2.LUW DB2LUW
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value1'

SELECT
	COUNT(*)
FROM
	"ValueConversion" "t"
WHERE
	CASE
		WHEN "t"."EnumNullable" IS NOT NULL THEN "t"."EnumNullable"
		ELSE "t"."Enum"
	END = @EnumNullable

