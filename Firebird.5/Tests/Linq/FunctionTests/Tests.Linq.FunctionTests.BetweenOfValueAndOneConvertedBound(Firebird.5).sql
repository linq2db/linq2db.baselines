-- Firebird.5 Firebird4
DECLARE @elapsed BigInt -- Int64
SET     @elapsed = 42
DECLARE @maximum BigInt -- Int64
SET     @maximum = 10

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	"r"."Id" <= 2 AND CAST(@elapsed AS BigInt) NOT BETWEEN "r"."Elapsed" AND @maximum
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @longer BigInt -- Int64
SET     @longer = 150
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@longer AS BigInt) NOT BETWEEN "r"."Elapsed" AND @limit
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @nullableValue VarChar(5) -- String
SET     @nullableValue = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@nullableValue AS VARCHAR(5)) BETWEEN @High AND "r"."High"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	@none BETWEEN "r"."Elapsed" AND @limit

-- Firebird.5 Firebird4
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@none AS BigInt) NOT BETWEEN "r"."Elapsed" AND @limit

-- Firebird.5 Firebird4
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@none AS BigInt) NOT BETWEEN "r"."Elapsed" AND @limit

-- Firebird.5 Firebird4
DECLARE @elapsed BigInt -- Int64
SET     @elapsed = 42
DECLARE @minimum BigInt -- Int64
SET     @minimum = 10

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@elapsed AS BigInt) BETWEEN @minimum AND "r"."Elapsed"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@value AS VARCHAR(5)) BETWEEN @High AND "r"."High"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	"r"."Id"
FROM
	"BetweenConvertedRow" "r"
WHERE
	CAST(@value AS VARCHAR(5)) NOT BETWEEN @High AND "r"."High"
ORDER BY
	"r"."Id"

