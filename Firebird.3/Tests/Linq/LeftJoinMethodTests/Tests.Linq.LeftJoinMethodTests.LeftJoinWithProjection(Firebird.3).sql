-- Firebird.3 Firebird3

SELECT
	"x"."Name",
	"o"."Id"
FROM
	"Customer" "x"
		LEFT JOIN "Order" "o" ON "x"."Id" = "o"."CustomerId"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Customer" "t1"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."CustomerId",
	"t1"."Name"
FROM
	"Order" "t1"

