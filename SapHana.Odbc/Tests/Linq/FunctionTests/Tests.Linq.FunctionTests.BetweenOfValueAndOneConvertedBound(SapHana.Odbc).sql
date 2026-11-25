-- SapHana.Odbc SapHanaOdbc
DECLARE @elapsed BigInt -- Int64
SET     @elapsed = 42
DECLARE @maximum BigInt -- Int64
SET     @maximum = 10

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	? NOT BETWEEN "r"."Elapsed" AND ?
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @elapsed BigInt -- Int64
SET     @elapsed = 42
DECLARE @minimum BigInt -- Int64
SET     @minimum = 5

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	? BETWEEN ? AND "r"."Elapsed"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(5) -- String
SET     @value = '00042'
DECLARE @Low NVarChar(5) -- String
SET     @Low = '00500'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	? BETWEEN "r"."Low" AND ?
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(5) -- String
SET     @value = '00042'
DECLARE @High NVarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	? BETWEEN ? AND "r"."High"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(5) -- String
SET     @value = '00042'
DECLARE @High NVarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	? NOT BETWEEN ? AND "r"."High"
ORDER BY
	"r"."Id"

