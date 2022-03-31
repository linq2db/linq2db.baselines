BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 NVarChar(1) -- String
SET     @p_1 = '1'

SELECT
	Cast((Cast((2010 + "t"."ID") as NVarChar(4000)) || '-' || ? || '-1') as Date)
FROM
	"LinqDataTypes" "t"

