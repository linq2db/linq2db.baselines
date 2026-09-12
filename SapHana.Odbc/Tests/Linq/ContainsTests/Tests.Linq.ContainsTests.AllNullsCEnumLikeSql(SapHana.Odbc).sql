-- SapHana.Odbc SapHanaOdbc
DECLARE @In VarChar -- AnsiString
SET     @In = NULL
DECLARE @In VarChar -- AnsiString
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)

-- SapHana.Odbc SapHanaOdbc
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (?, ?)

