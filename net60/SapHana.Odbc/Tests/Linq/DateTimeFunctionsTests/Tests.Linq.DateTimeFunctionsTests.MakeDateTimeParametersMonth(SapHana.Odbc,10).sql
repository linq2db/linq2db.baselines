BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Cast((Cast((2010 + "t"."ID") as VarChar(11)) || '-' || ? || '-1') as Date)
FROM
	"LinqDataTypes" "t"

