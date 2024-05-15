BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = '492ec285-ac99-4d3d-86d9-74276e405de0'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> ?

