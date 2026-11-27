-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."Id",
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"EnumFilterEntity" "p"
WHERE
	"p"."MyEnum2" NOT IN (1)

