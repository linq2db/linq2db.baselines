BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value4___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In VarChar -- AnsiString
SET     @In = NULL

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (?, ?)
LIMIT 1

