-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Name",
	"o"."Id"
FROM
	"Customer" "x"
		LEFT JOIN "Order" "o" ON "x"."Id" = "o"."CustomerId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Customer" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."CustomerId",
	"t1"."Name"
FROM
	"Order" "t1"

