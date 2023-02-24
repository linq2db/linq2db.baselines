BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Cast((Lpad((2010 + "t"."ID"),4,'0') || '-' || ? || '-01') as Date)
FROM
	"LinqDataTypes" "t"

