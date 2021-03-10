BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID NVarChar(5) -- String
SET     @ID = '2010-'
DECLARE @ID_1 NVarChar(5) -- String
SET     @ID_1 = '2010-'

SELECT
	Cast((? || Cast("p"."ID" as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" "p"
WHERE
	Year(Cast((? || Cast("p"."ID" as VarChar(11)) || '-1') as Date)) = 2010

