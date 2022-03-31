BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 NVarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((? || Cast("p"."ID" as NVarChar(4000)) || '-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

