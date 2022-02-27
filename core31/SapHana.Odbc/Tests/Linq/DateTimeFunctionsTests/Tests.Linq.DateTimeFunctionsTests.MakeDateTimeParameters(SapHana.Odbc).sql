BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1 NVarChar(5) -- String
SET     @p1 = '2010-'

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

