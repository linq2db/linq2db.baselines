-- Firebird.2.5 Firebird
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- String
SET     @In_1 = '___Value4___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)

-- Firebird.2.5 Firebird
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar -- String
SET     @In_1 = NULL

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)

-- Firebird.2.5 Firebird
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- String
SET     @In_1 = '___Value2___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)

-- Firebird.2.5 Firebird
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@NotIn, @NotIn_1)

-- Firebird.2.5 Firebird
DECLARE @NotIn VarChar(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@NotIn, @NotIn_1)

