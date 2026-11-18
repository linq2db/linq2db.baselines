-- Firebird.5 Firebird4
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- String
SET     @In_1 = '___Value4___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar -- String
SET     @In_1 = NULL

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- String
SET     @In_1 = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@NotIn, @NotIn_1)
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @NotIn VarChar(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@NotIn, @NotIn_1)
FETCH NEXT 1 ROWS ONLY

