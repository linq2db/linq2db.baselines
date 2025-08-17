BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."CEnum" IN (@In) OR "s"."CEnum" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @NotIn VarChar(12) -- String
SET     @NotIn = '___Value2___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."CEnum" NOT IN (@NotIn) AND "s"."CEnum" IS NOT NULL)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @NotIn VarChar(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."CEnum" NOT IN (@NotIn, @NotIn_1) OR "s"."CEnum" IS NULL)

