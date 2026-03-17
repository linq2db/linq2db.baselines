-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Name",
	"o"."Id"
FROM
	"Customer" "x"
		LEFT JOIN "Order" "o" ON "x"."Id" = "o"."CustomerId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Customer" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."CustomerId",
	"t1"."Name"
FROM
	"Order" "t1"

