-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce("t1"."EnumNullable", "t1"."Enum")
FROM
	"ValueConversion" "t1"

