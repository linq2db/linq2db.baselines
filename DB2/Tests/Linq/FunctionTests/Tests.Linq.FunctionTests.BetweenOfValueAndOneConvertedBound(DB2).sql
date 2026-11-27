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
	"r"."Id" <= 2 AND @elapsed NOT BETWEEN "r"."Elapsed" AND @maximum
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @longer BigInt(8) -- Int64
SET     @longer = 150
DECLARE @limit BigInt(8) -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@longer NOT BETWEEN "r"."Elapsed" AND @limit
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @nullableValue VarChar(5) -- String
SET     @nullableValue = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@nullableValue BETWEEN @High AND "r"."High"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt(8) -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@none BETWEEN "r"."Elapsed" AND @limit

-- DB2 DB2.LUW DB2LUW
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt(8) -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@none NOT BETWEEN "r"."Elapsed" AND @limit

-- DB2 DB2.LUW DB2LUW
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt(8) -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@none NOT BETWEEN "r"."Elapsed" AND @limit

-- DB2 DB2.LUW DB2LUW
DECLARE @elapsed BigInt(8) -- Int64
SET     @elapsed = 42
DECLARE @minimum BigInt(8) -- Int64
SET     @minimum = 10

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

