-- DB2 DB2.LUW DB2LUW

SELECT
	"c_2"."Id",
	"o"."Id"
FROM
	(
		SELECT
			"c_1"."Id"
		FROM
			"Customer" "c_1"
		WHERE
			"c_1"."Id" > 0
		FETCH NEXT 10 ROWS ONLY
	) "c_2"
		LEFT JOIN "Order" "o" ON "c_2"."Id" = "o"."CustomerId"

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

