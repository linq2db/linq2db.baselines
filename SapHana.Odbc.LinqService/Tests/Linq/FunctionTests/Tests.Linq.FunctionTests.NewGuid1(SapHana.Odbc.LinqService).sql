BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '4c938e3e-b2f0-4974-aa76-32fe91388fb2'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> ?

