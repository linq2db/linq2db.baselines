BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID NVarChar(5) -- String
SET     @ID = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((? || Cast("p"."ID" as VarChar(11)) || '-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

