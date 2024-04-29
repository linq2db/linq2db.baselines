BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '2aaf5d4f-7d37-47bb-a23f-a0a03e9f348d'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> ?

