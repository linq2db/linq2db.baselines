-- Firebird.2.5 Firebird
SELECT
	"t"."Name"
FROM
	"Customer" "t"
		LEFT JOIN "Order" "o" ON "t"."Id" = "o"."CustomerId"
WHERE
	"o"."Id" IS NULL

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

