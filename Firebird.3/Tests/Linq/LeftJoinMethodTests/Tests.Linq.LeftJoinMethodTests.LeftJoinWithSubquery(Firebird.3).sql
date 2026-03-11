-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 10

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
		FETCH NEXT @take ROWS ONLY
	) "c_2"
		LEFT JOIN "Order" "o" ON "c_2"."Id" = "o"."CustomerId"

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

