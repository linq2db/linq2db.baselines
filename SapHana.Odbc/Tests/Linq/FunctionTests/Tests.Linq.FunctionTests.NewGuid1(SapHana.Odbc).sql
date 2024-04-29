BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'cfb1859d-6cb2-489e-ab53-b9f65139b442'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> ?

