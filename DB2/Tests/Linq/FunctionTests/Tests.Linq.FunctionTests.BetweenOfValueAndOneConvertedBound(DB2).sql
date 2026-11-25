-- DB2 DB2.LUW DB2LUW
DECLARE @elapsed BigInt(8) -- Int64
SET     @elapsed = 42
DECLARE @maximum BigInt(8) -- Int64
SET     @maximum = 10

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@elapsed NOT BETWEEN "r"."Elapsed" AND @maximum
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @elapsed BigInt(8) -- Int64
SET     @elapsed = 42
DECLARE @minimum BigInt(8) -- Int64
SET     @minimum = 5

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@elapsed BETWEEN @minimum AND "r"."Elapsed"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @Low VarChar(5) -- String
SET     @Low = '00500'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@value BETWEEN "r"."Low" AND @Low
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@value BETWEEN @High AND "r"."High"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@value NOT BETWEEN @High AND "r"."High"
ORDER BY
	"r"."Id"

