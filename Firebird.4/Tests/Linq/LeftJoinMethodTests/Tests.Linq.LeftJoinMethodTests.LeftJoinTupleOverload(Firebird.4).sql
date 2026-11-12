-- Firebird.4 Firebird4
SELECT
	"t"."Name",
	"o"."Name"
FROM
	"Customer" "t"
		LEFT JOIN "Order" "o" ON "t"."Id" = "o"."CustomerId"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Customer" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."CustomerId",
	"t1"."Name"
FROM
	"Order" "t1"

