-- SapHana.Odbc SapHanaOdbc
DECLARE @flag TinyInt(1) -- Byte
SET     @flag = 1

SELECT
	"t"."ID"
FROM
	"LinqDataTypes" "t"
WHERE
	? IN ("t"."BoolValue")

