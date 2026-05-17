-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"c_2"."Id",
	"o"."Id"
FROM
	(
		SELECT FIRST @take
			"c_1"."Id"
		FROM
			"Customer" "c_1"
		WHERE
			"c_1"."Id" > 0
	) "c_2"
		LEFT JOIN "Order" "o" ON "c_2"."Id" = "o"."CustomerId"

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

