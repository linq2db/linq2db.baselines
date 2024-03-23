BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1 NVarChar(5) -- String
SET     @Parameter1 = '2010-'

SELECT
	"t"."ID"
FROM
	"LinqDataTypes" "t"
WHERE
	Year(Cast((? || Lpad("t"."ID",2,'0') || '-01') as Date)) = 2010

