BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CAST(To_NVarchar("t"."DateTimeValue", 'FF3') AS Integer)
FROM
	"LinqDataTypes" "t"

