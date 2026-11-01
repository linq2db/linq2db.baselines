-- SapHana.Odbc SapHanaOdbc
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT
	SUM("g_1"."Cents") * ?
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT
	SUM("g_1"."Cents") / ?
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT
	SUM("g_1"."Cents") + ?
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT
	"x"."Cents" * ?
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT
	"x"."Cents" + ?
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
LIMIT 2

