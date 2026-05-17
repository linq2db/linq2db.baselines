-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Type",
	"x"."OwnerId",
	"a_Owner"."Id",
	"a_Owner"."Name"
FROM
	"Item" "x"
		LEFT JOIN "Owner" "a_Owner" ON "x"."OwnerId" = "a_Owner"."Id"

