BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" <> SYSUUID

