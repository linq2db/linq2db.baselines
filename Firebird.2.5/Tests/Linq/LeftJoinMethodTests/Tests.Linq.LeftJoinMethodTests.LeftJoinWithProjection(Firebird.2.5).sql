-- Firebird.2.5 Firebird

SELECT
	"x"."Name",
	"o"."Id"
FROM
	"Customer" "x"
		LEFT JOIN "Order" "o" ON "x"."Id" = "o"."CustomerId"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Customer" "t1"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."CustomerId",
	"t1"."Name"
FROM
	"Order" "t1"

